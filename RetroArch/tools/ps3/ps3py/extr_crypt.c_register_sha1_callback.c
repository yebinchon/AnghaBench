
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 scalar_t__ PyArg_ParseTuple (int *,char*,int **) ;
 int PyCallable_Check (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int Py_XDECREF (int *) ;
 int Py_XINCREF (int *) ;
 int * sha1_callback ;

__attribute__((used)) static PyObject *register_sha1_callback(PyObject *self, PyObject *args)
{
   PyObject *result = ((void*)0);
   PyObject *temp;

   if (PyArg_ParseTuple(args, "O:set_callback", &temp))
   {
      if (!PyCallable_Check(temp))
      {
         PyErr_SetString(PyExc_TypeError, "parameter must be callable");
         return ((void*)0);
      }
      Py_XINCREF(temp);
      Py_XDECREF(sha1_callback);
      sha1_callback = temp;

      Py_INCREF(Py_None);
      result = Py_None;
   }
   return result;
}
