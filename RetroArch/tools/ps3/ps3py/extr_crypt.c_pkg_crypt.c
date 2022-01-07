
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int PyObject ;


 int PyArg_Parse (int *,char*,int**,int*) ;
 int PyArg_ParseTuple (int *,char*,int**,int*,int**,int*,int*) ;
 int * PyObject_CallObject (int ,int *) ;
 int * Py_BuildValue (char*,int*,int) ;
 int Py_DECREF (int *) ;
 int free (int*) ;
 int* malloc (int) ;
 int manipulate (int*) ;
 int sha1_callback ;

__attribute__((used)) static PyObject* pkg_crypt(PyObject *self, PyObject *args)
{
   uint8_t *key, *input, *ret;
   int key_length, input_length, length;
   int remaining, i, offset=0;

   PyObject *arglist;
   PyObject *result;

   if (!PyArg_ParseTuple(args, "s#s#i", &key, &key_length, &input, &input_length, &length))
      return ((void*)0);
   ret = malloc(length);
   remaining = length;

   while (remaining > 0)
   {
      int outHash_length;
      uint8_t *outHash;
      int bytes_to_dump = remaining;
      if (bytes_to_dump > 0x10)
         bytes_to_dump = 0x10;

      arglist = Py_BuildValue("(s#)", key, 0x40);
      result = PyObject_CallObject(sha1_callback, arglist);
      Py_DECREF(arglist);
      if (!result)
         return ((void*)0);
      if (!PyArg_Parse(result, "s#", &outHash, &outHash_length))
         return ((void*)0);

      for(i = 0; i < bytes_to_dump; i++)
      {
         ret[offset] = outHash[i] ^ input[offset];
         offset++;
      }
      Py_DECREF(result);
      manipulate(key);
      remaining -= bytes_to_dump;
   }


   PyObject *py_ret = Py_BuildValue("s#", ret, length);
   free(ret);
   return py_ret;
}
