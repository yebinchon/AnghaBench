
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 scalar_t__ PyBytes_AsString (int *) ;
 int PyBytes_Check (int *) ;
 int PyBytes_Size (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;

__attribute__((used)) static PyObject *
_optr_to_object(PyObject *bytes)
{
    if(!PyBytes_Check(bytes)) {
        PyErr_SetString(PyExc_TypeError, "Cannot unwrap non-bytes object");
        return ((void*)0);
    }
    if(PyBytes_Size(bytes) != sizeof(void*)) {
        PyErr_SetString(PyExc_TypeError, "Invalid length of bytes object");
        return ((void*)0);
    }
    PyObject *object = * (PyObject **) PyBytes_AsString(bytes);
    return object;
}
