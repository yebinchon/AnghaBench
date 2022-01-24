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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sha1_callback ; 

__attribute__((used)) static PyObject *FUNC6(PyObject *self, PyObject *args)
{
   PyObject *result = NULL;
   PyObject *temp;

   if (FUNC0(args, "O:set_callback", &temp))
   {
      if (!FUNC1(temp))
      {
         FUNC2(PyExc_TypeError, "parameter must be callable");
         return NULL;
      }
      FUNC5(temp);           /* Add a reference to new callback */
      FUNC4(sha1_callback);  /* Dispose of previous callback */
      sha1_callback = temp;       /* Remember new callback */
                                  /* Boilerplate to return "None" */
      FUNC3(Py_None);
      result = Py_None;
   }
   return result;
}