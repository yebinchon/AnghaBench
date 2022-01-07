
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyBytes_FromStringAndSize (char const*,int) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static PyObject *
_object_to_optr(PyObject *obj)
{






    Py_INCREF(obj);
    return PyBytes_FromStringAndSize((const char*) &obj, sizeof(void*));
}
