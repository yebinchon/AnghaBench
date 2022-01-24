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
 int /*<<< orphan*/ * FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC2(PyObject *obj)
{
    /*
     * Create a temporary reference to the object being passed around so it does not vanish.
     * Note that we never decref this one in _unwrap_object, since we just transfer that reference
     * there, i.e. there is an elided "Py_INCREF(x); Py_DECREF(x)".
     * Since the reference is transferred, calls to _wrap_object and _unwrap_object must be symmetric.
     */
    FUNC1(obj);
    return FUNC0((const char*) &obj, sizeof(void*));
}