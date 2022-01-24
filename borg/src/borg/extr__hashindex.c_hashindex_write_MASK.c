#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  num_buckets; int /*<<< orphan*/  num_entries; int /*<<< orphan*/  magic; } ;
struct TYPE_4__ {int bucket_size; scalar_t__ buckets; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; scalar_t__ num_buckets; scalar_t__ num_entries; } ;
typedef  int Py_ssize_t ;
typedef  char PyObject ;
typedef  TYPE_1__ HashIndex ;
typedef  TYPE_2__ HashHeader ;

/* Variables and functions */
 int /*<<< orphan*/  MAGIC ; 
 int /*<<< orphan*/  PyBUF_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_OverflowError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11(HashIndex *index, PyObject *file_py)
{
    PyObject *length_object, *buckets_view, *tmp;
    Py_ssize_t length;
    Py_ssize_t buckets_length = (Py_ssize_t)index->num_buckets * index->bucket_size;
    HashHeader header = {
        .magic = MAGIC,
        .num_entries = FUNC9(index->num_entries),
        .num_buckets = FUNC9(index->num_buckets),
        .key_size = index->key_size,
        .value_size = index->value_size
    };

    length_object = FUNC6(file_py, "write", "y#", &header, (Py_ssize_t)sizeof(HashHeader));
    if(FUNC2()) {
        return;
    }
    length = FUNC5(length_object, PyExc_OverflowError);
    FUNC7(length_object);
    if(FUNC2()) {
        return;
    }
    if(length != sizeof(HashHeader)) {
        FUNC3(PyExc_ValueError, "Failed to write header");
        return;
    }

    /*
     * Hash the header
     */
    tmp = FUNC6(file_py, "hash_part", "s", "HashHeader");
    FUNC8(tmp);
    if(FUNC2()) {
        if(FUNC1(PyExc_AttributeError)) {
            /* Be able to work with regular file objects which do not have a hash_part method. */
            FUNC0();
        } else {
            return;
        }
    }

    /* Note: explicitly construct view; BuildValue can convert (pointer, length) to Python objects, but copies them for doing so */
    buckets_view = FUNC4((char*)index->buckets, buckets_length, PyBUF_READ);
    if(!buckets_view) {
        FUNC10(FUNC2());
        return;
    }
    length_object = FUNC6(file_py, "write", "O", buckets_view);
    FUNC7(buckets_view);
    if(FUNC2()) {
        return;
    }
    length = FUNC5(length_object, PyExc_OverflowError);
    FUNC7(length_object);
    if(FUNC2()) {
        return;
    }
    if(length != buckets_length) {
        FUNC3(PyExc_ValueError, "Failed to write buckets");
        return;
    }
}