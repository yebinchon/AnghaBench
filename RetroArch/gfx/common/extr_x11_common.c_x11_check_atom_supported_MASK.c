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
typedef  int /*<<< orphan*/  Display ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  False ; 
 scalar_t__ None ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  UINT_MAX ; 
 scalar_t__ XA_ATOM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int*,unsigned long*,unsigned long*,unsigned char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(Display *dpy, Atom atom)
{
   Atom XA_NET_SUPPORTED = FUNC3(dpy, "_NET_SUPPORTED", True);
   Atom type;
   int format;
   unsigned long nitems;
   unsigned long bytes_after;
   Atom *prop;
   int i;

   if (XA_NET_SUPPORTED == None)
      return false;

   FUNC2(dpy, FUNC0(dpy), XA_NET_SUPPORTED,
         0, UINT_MAX, False, XA_ATOM, &type, &format,&nitems,
         &bytes_after, (unsigned char **) &prop);

   if (!prop || type != XA_ATOM)
      return false;

   for (i = 0; i < nitems; i++)
   {
      if (prop[i] == atom)
      {
         FUNC1(prop);
         return true;
      }
   }

   FUNC1(prop);

   return false;
}