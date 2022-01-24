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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int**,int*,int**,int*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  sha1_callback ; 

__attribute__((used)) static PyObject* FUNC8(PyObject *self, PyObject *args)
{
   uint8_t *key, *input, *ret;
   int key_length, input_length, length;
   int remaining, i, offset=0;

   PyObject *arglist;
   PyObject *result;

   if (!FUNC1(args, "s#s#i", &key, &key_length, &input, &input_length, &length))
      return NULL;
   ret       = FUNC6(length);
   remaining = length;

   while (remaining > 0)
   {
      int outHash_length;
      uint8_t *outHash;
      int bytes_to_dump = remaining;
      if (bytes_to_dump > 0x10)
         bytes_to_dump = 0x10;

      arglist = FUNC3("(s#)", key, 0x40);
      result  = FUNC2(sha1_callback, arglist);
      FUNC4(arglist);
      if (!result)
         return NULL;
      if (!FUNC0(result, "s#", &outHash, &outHash_length))
         return NULL;

      for(i = 0; i < bytes_to_dump; i++)
      {
         ret[offset] = outHash[i] ^ input[offset];
         offset++;
      }
      FUNC4(result);
      FUNC7(key);
      remaining -= bytes_to_dump;
   }

   /* Return the encrypted data */
   PyObject *py_ret = FUNC3("s#", ret, length);
   FUNC5(ret);
   return py_ret;
}