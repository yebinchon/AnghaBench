
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int key_size; int value_size; int num_buckets; int num_entries; int magic; } ;
struct TYPE_12__ {scalar_t__ buf; } ;
struct TYPE_13__ {int key_size; int value_size; int bucket_size; scalar_t__ min_empty; scalar_t__ num_empty; void* num_buckets; TYPE_1__ buckets_buffer; scalar_t__ buckets; int upper_limit; int lower_limit; void* num_entries; } ;
typedef int Py_ssize_t ;
typedef TYPE_1__ Py_buffer ;
typedef int PyObject ;
typedef TYPE_2__ HashIndex ;
typedef TYPE_3__ HashHeader ;


 int MAGIC ;
 int MAGIC_LEN ;
 int PyBUF_SIMPLE ;
 int PyBuffer_Release (TYPE_1__*) ;
 int PyBytes_Size (int *) ;
 int PyErr_Clear () ;
 scalar_t__ PyErr_ExceptionMatches (int ) ;
 int PyErr_Format (int ,char*,...) ;
 int PyErr_NoMemory () ;
 scalar_t__ PyErr_Occurred () ;
 int PyExc_AttributeError ;
 int PyExc_OverflowError ;
 int PyExc_ValueError ;
 int PyNumber_AsSsize_t (int *,int ) ;
 int * PyObject_CallMethod (int *,char*,char*,...) ;
 int PyObject_GetBuffer (int *,TYPE_1__*,int ) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;
 int SEEK_END ;
 int SEEK_SET ;
 void* _le32toh (int ) ;
 int assert (scalar_t__) ;
 scalar_t__ count_empty (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int get_lower_limit (void*) ;
 scalar_t__ get_min_empty (void*) ;
 int get_upper_limit (void*) ;
 int hashindex_free_buckets (TYPE_2__*) ;
 int hashindex_resize (TYPE_2__*,void*) ;
 TYPE_2__* malloc (int) ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static HashIndex *
hashindex_read(PyObject *file_py, int permit_compact)
{
    Py_ssize_t length, buckets_length, bytes_read;
    Py_buffer header_buffer;
    PyObject *header_bytes, *length_object, *bucket_bytes, *tmp;
    HashHeader *header;
    HashIndex *index = ((void*)0);

    header_bytes = PyObject_CallMethod(file_py, "read", "n", (Py_ssize_t)sizeof(HashHeader));
    if(!header_bytes) {
        assert(PyErr_Occurred());
        goto fail;
    }

    bytes_read = PyBytes_Size(header_bytes);
    if(PyErr_Occurred()) {

        goto fail_decref_header;
    }
    if(bytes_read != sizeof(HashHeader)) {


        PyErr_Format(PyExc_ValueError, "Could not read header (expected %zu, but read %zd bytes)",
                     sizeof(HashHeader), bytes_read);
        goto fail_decref_header;
    }





    tmp = PyObject_CallMethod(file_py, "hash_part", "s", "HashHeader");
    Py_XDECREF(tmp);
    if(PyErr_Occurred()) {
        if(PyErr_ExceptionMatches(PyExc_AttributeError)) {

            PyErr_Clear();
        } else {
            goto fail_decref_header;
        }
    }


    length_object = PyObject_CallMethod(file_py, "seek", "ni", (Py_ssize_t)0, SEEK_END);
    if(PyErr_Occurred()) {
        goto fail_decref_header;
    }
    length = PyNumber_AsSsize_t(length_object, PyExc_OverflowError);
    Py_DECREF(length_object);
    if(PyErr_Occurred()) {

        goto fail_decref_header;
    }

    tmp = PyObject_CallMethod(file_py, "seek", "ni", (Py_ssize_t)sizeof(HashHeader), SEEK_SET);
    Py_XDECREF(tmp);
    if(PyErr_Occurred()) {
        goto fail_decref_header;
    }


    if(!(index = malloc(sizeof(HashIndex)))) {
        PyErr_NoMemory();
        goto fail_decref_header;
    }

    PyObject_GetBuffer(header_bytes, &header_buffer, PyBUF_SIMPLE);
    if(PyErr_Occurred()) {
        goto fail_free_index;
    }

    header = (HashHeader*) header_buffer.buf;
    if(memcmp(header->magic, MAGIC, MAGIC_LEN)) {
        PyErr_Format(PyExc_ValueError, "Unknown MAGIC in header");
        goto fail_release_header_buffer;
    }

    buckets_length = (Py_ssize_t)_le32toh(header->num_buckets) * (header->key_size + header->value_size);
    if((Py_ssize_t)length != (Py_ssize_t)sizeof(HashHeader) + buckets_length) {
        PyErr_Format(PyExc_ValueError, "Incorrect file length (expected %zd, got %zd)",
                     sizeof(HashHeader) + buckets_length, length);
        goto fail_release_header_buffer;
    }

    index->num_entries = _le32toh(header->num_entries);
    index->num_buckets = _le32toh(header->num_buckets);
    index->key_size = header->key_size;
    index->value_size = header->value_size;
    index->bucket_size = index->key_size + index->value_size;
    index->lower_limit = get_lower_limit(index->num_buckets);
    index->upper_limit = get_upper_limit(index->num_buckets);
    bucket_bytes = PyObject_CallMethod(file_py, "read", "n", buckets_length);
    if(!bucket_bytes) {
        assert(PyErr_Occurred());
        goto fail_release_header_buffer;
    }
    bytes_read = PyBytes_Size(bucket_bytes);
    if(PyErr_Occurred()) {

        goto fail_decref_buckets;
    }
    if(bytes_read != buckets_length) {
        PyErr_Format(PyExc_ValueError, "Could not read buckets (expected %zd, got %zd)", buckets_length, bytes_read);
        goto fail_decref_buckets;
    }

    PyObject_GetBuffer(bucket_bytes, &index->buckets_buffer, PyBUF_SIMPLE);
    if(PyErr_Occurred()) {
        goto fail_decref_buckets;
    }
    index->buckets = index->buckets_buffer.buf;

    if(!permit_compact) {
        index->min_empty = get_min_empty(index->num_buckets);
        index->num_empty = count_empty(index);

        if(index->num_empty < index->min_empty) {

            if(!hashindex_resize(index, index->num_buckets)) {
                PyErr_Format(PyExc_ValueError, "Failed to rebuild table");
                goto fail_free_buckets;
            }
        }
    }






fail_free_buckets:
    if(PyErr_Occurred()) {
        hashindex_free_buckets(index);
    }
fail_decref_buckets:
    Py_DECREF(bucket_bytes);
fail_release_header_buffer:
    PyBuffer_Release(&header_buffer);
fail_free_index:
    if(PyErr_Occurred()) {
        free(index);
        index = ((void*)0);
    }
fail_decref_header:
    Py_DECREF(header_bytes);
fail:
    return index;
}
