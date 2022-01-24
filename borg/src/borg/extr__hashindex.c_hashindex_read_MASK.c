#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int key_size; int value_size; int /*<<< orphan*/  num_buckets; int /*<<< orphan*/  num_entries; int /*<<< orphan*/  magic; } ;
struct TYPE_12__ {scalar_t__ buf; } ;
struct TYPE_13__ {int key_size; int value_size; int bucket_size; scalar_t__ min_empty; scalar_t__ num_empty; void* num_buckets; TYPE_1__ buckets_buffer; scalar_t__ buckets; int /*<<< orphan*/  upper_limit; int /*<<< orphan*/  lower_limit; void* num_entries; } ;
typedef  int Py_ssize_t ;
typedef  TYPE_1__ Py_buffer ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ HashIndex ;
typedef  TYPE_3__ HashHeader ;

/* Variables and functions */
 int /*<<< orphan*/  MAGIC ; 
 int /*<<< orphan*/  MAGIC_LEN ; 
 int /*<<< orphan*/  PyBUF_SIMPLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_OverflowError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 scalar_t__ FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,void*) ; 
 TYPE_2__* FUNC21 (int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HashIndex *
FUNC23(PyObject *file_py, int permit_compact)
{
    Py_ssize_t length, buckets_length, bytes_read;
    Py_buffer header_buffer;
    PyObject *header_bytes, *length_object, *bucket_bytes, *tmp;
    HashHeader *header;
    HashIndex *index = NULL;

    header_bytes = FUNC8(file_py, "read", "n", (Py_ssize_t)sizeof(HashHeader));
    if(!header_bytes) {
        FUNC13(FUNC6());
        goto fail;
    }

    bytes_read = FUNC1(header_bytes);
    if(FUNC6()) {
        /* TypeError, not a bytes() object */
        goto fail_decref_header;
    }
    if(bytes_read != sizeof(HashHeader)) {
        /* Truncated file */
        /* Note: %zd is the format for Py_ssize_t, %zu is for size_t */
        FUNC4(PyExc_ValueError, "Could not read header (expected %zu, but read %zd bytes)",
                     sizeof(HashHeader), bytes_read);
        goto fail_decref_header;
    }

    /*
     * Hash the header
     * If the header is corrupted this bails before doing something stupid (like allocating 3.8 TB of memory)
     */
    tmp = FUNC8(file_py, "hash_part", "s", "HashHeader");
    FUNC11(tmp);
    if(FUNC6()) {
        if(FUNC3(PyExc_AttributeError)) {
            /* Be able to work with regular file objects which do not have a hash_part method. */
            FUNC2();
        } else {
            goto fail_decref_header;
        }
    }

    /* Find length of file */
    length_object = FUNC8(file_py, "seek", "ni", (Py_ssize_t)0, SEEK_END);
    if(FUNC6()) {
        goto fail_decref_header;
    }
    length = FUNC7(length_object, PyExc_OverflowError);
    FUNC10(length_object);
    if(FUNC6()) {
        /* This shouldn't generally happen; but can if seek() returns something that's not a number */
        goto fail_decref_header;
    }

    tmp = FUNC8(file_py, "seek", "ni", (Py_ssize_t)sizeof(HashHeader), SEEK_SET);
    FUNC11(tmp);
    if(FUNC6()) {
        goto fail_decref_header;
    }

    /* Set up the in-memory header */
    if(!(index = FUNC21(sizeof(HashIndex)))) {
        FUNC5();
        goto fail_decref_header;
    }

    FUNC9(header_bytes, &header_buffer, PyBUF_SIMPLE);
    if(FUNC6()) {
        goto fail_free_index;
    }

    header = (HashHeader*) header_buffer.buf;
    if(FUNC22(header->magic, MAGIC, MAGIC_LEN)) {
        FUNC4(PyExc_ValueError, "Unknown MAGIC in header");
        goto fail_release_header_buffer;
    }

    buckets_length = (Py_ssize_t)FUNC12(header->num_buckets) * (header->key_size + header->value_size);
    if((Py_ssize_t)length != (Py_ssize_t)sizeof(HashHeader) + buckets_length) {
        FUNC4(PyExc_ValueError, "Incorrect file length (expected %zd, got %zd)",
                     sizeof(HashHeader) + buckets_length, length);
        goto fail_release_header_buffer;
    }

    index->num_entries = FUNC12(header->num_entries);
    index->num_buckets = FUNC12(header->num_buckets);
    index->key_size = header->key_size;
    index->value_size = header->value_size;
    index->bucket_size = index->key_size + index->value_size;
    index->lower_limit = FUNC16(index->num_buckets);
    index->upper_limit = FUNC18(index->num_buckets);

    /*
     * For indices read from disk we don't malloc() the buckets ourselves,
     * we have them backed by a Python bytes() object instead, and go through
     * Python I/O.
     *
     * Note: Issuing read(buckets_length) is okay here, because buffered readers
     * will issue multiple underlying reads if necessary. This supports indices
     * >2 GB on Linux. We also compare lengths later.
     */
    bucket_bytes = FUNC8(file_py, "read", "n", buckets_length);
    if(!bucket_bytes) {
        FUNC13(FUNC6());
        goto fail_release_header_buffer;
    }
    bytes_read = FUNC1(bucket_bytes);
    if(FUNC6()) {
        /* TypeError, not a bytes() object */
        goto fail_decref_buckets;
    }
    if(bytes_read != buckets_length) {
        FUNC4(PyExc_ValueError, "Could not read buckets (expected %zd, got %zd)", buckets_length, bytes_read);
        goto fail_decref_buckets;
    }

    FUNC9(bucket_bytes, &index->buckets_buffer, PyBUF_SIMPLE);
    if(FUNC6()) {
        goto fail_decref_buckets;
    }
    index->buckets = index->buckets_buffer.buf;

    if(!permit_compact) {
        index->min_empty = FUNC17(index->num_buckets);
        index->num_empty = FUNC14(index);

        if(index->num_empty < index->min_empty) {
            /* too many tombstones here / not enough empty buckets, do a same-size rebuild */
            if(!FUNC20(index, index->num_buckets)) {
                FUNC4(PyExc_ValueError, "Failed to rebuild table");
                goto fail_free_buckets;
            }
        }
    }

    /*
     * Clean intermediary objects up. Note that index is only freed if an error has occurred.
     * Also note that the buffer in index->buckets_buffer holds a reference to buckets_bytes.
     */

fail_free_buckets:
    if(FUNC6()) {
        FUNC19(index);
    }
fail_decref_buckets:
    FUNC10(bucket_bytes);
fail_release_header_buffer:
    FUNC0(&header_buffer);
fail_free_index:
    if(FUNC6()) {
        FUNC15(index);
        index = NULL;
    }
fail_decref_header:
    FUNC10(header_bytes);
fail:
    return index;
}