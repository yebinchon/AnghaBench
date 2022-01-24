#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 

__attribute__((used)) static PyObject *
FUNC4(PyObject *bytes)
{
    if(!FUNC1(bytes)) {
        FUNC3(PyExc_TypeError, "Cannot unwrap non-bytes object");
        return NULL;
    }
    if(FUNC2(bytes) != sizeof(void*)) {
        FUNC3(PyExc_TypeError, "Invalid length of bytes object");
        return NULL;
    }
    PyObject *object = * (PyObject **) FUNC0(bytes);
    return object;
}