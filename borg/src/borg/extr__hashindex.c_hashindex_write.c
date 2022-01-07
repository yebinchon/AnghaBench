
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int value_size; int key_size; int num_buckets; int num_entries; int magic; } ;
struct TYPE_4__ {int bucket_size; scalar_t__ buckets; int value_size; int key_size; scalar_t__ num_buckets; scalar_t__ num_entries; } ;
typedef int Py_ssize_t ;
typedef char PyObject ;
typedef TYPE_1__ HashIndex ;
typedef TYPE_2__ HashHeader ;


 int MAGIC ;
 int PyBUF_READ ;
 int PyErr_Clear () ;
 scalar_t__ PyErr_ExceptionMatches (int ) ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int PyExc_OverflowError ;
 int PyExc_ValueError ;
 char* PyMemoryView_FromMemory (char*,int,int ) ;
 int PyNumber_AsSsize_t (char*,int ) ;
 char* PyObject_CallMethod (char*,char*,char*,...) ;
 int Py_DECREF (char*) ;
 int Py_XDECREF (char*) ;
 int _htole32 (scalar_t__) ;
 int assert (scalar_t__) ;

__attribute__((used)) static void
hashindex_write(HashIndex *index, PyObject *file_py)
{
    PyObject *length_object, *buckets_view, *tmp;
    Py_ssize_t length;
    Py_ssize_t buckets_length = (Py_ssize_t)index->num_buckets * index->bucket_size;
    HashHeader header = {
        .magic = MAGIC,
        .num_entries = _htole32(index->num_entries),
        .num_buckets = _htole32(index->num_buckets),
        .key_size = index->key_size,
        .value_size = index->value_size
    };

    length_object = PyObject_CallMethod(file_py, "write", "y#", &header, (Py_ssize_t)sizeof(HashHeader));
    if(PyErr_Occurred()) {
        return;
    }
    length = PyNumber_AsSsize_t(length_object, PyExc_OverflowError);
    Py_DECREF(length_object);
    if(PyErr_Occurred()) {
        return;
    }
    if(length != sizeof(HashHeader)) {
        PyErr_SetString(PyExc_ValueError, "Failed to write header");
        return;
    }




    tmp = PyObject_CallMethod(file_py, "hash_part", "s", "HashHeader");
    Py_XDECREF(tmp);
    if(PyErr_Occurred()) {
        if(PyErr_ExceptionMatches(PyExc_AttributeError)) {

            PyErr_Clear();
        } else {
            return;
        }
    }


    buckets_view = PyMemoryView_FromMemory((char*)index->buckets, buckets_length, PyBUF_READ);
    if(!buckets_view) {
        assert(PyErr_Occurred());
        return;
    }
    length_object = PyObject_CallMethod(file_py, "write", "O", buckets_view);
    Py_DECREF(buckets_view);
    if(PyErr_Occurred()) {
        return;
    }
    length = PyNumber_AsSsize_t(length_object, PyExc_OverflowError);
    Py_DECREF(length_object);
    if(PyErr_Occurred()) {
        return;
    }
    if(length != buckets_length) {
        PyErr_SetString(PyExc_ValueError, "Failed to write buckets");
        return;
    }
}
