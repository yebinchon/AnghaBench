
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Display ;
typedef scalar_t__ Atom ;


 int DefaultRootWindow (int *) ;
 int False ;
 scalar_t__ None ;
 int True ;
 int UINT_MAX ;
 scalar_t__ XA_ATOM ;
 int XFree (scalar_t__*) ;
 int XGetWindowProperty (int *,int ,scalar_t__,int ,int ,int ,scalar_t__,scalar_t__*,int*,unsigned long*,unsigned long*,unsigned char**) ;
 scalar_t__ XInternAtom (int *,char*,int ) ;

__attribute__((used)) static bool x11_check_atom_supported(Display *dpy, Atom atom)
{
   Atom XA_NET_SUPPORTED = XInternAtom(dpy, "_NET_SUPPORTED", True);
   Atom type;
   int format;
   unsigned long nitems;
   unsigned long bytes_after;
   Atom *prop;
   int i;

   if (XA_NET_SUPPORTED == None)
      return 0;

   XGetWindowProperty(dpy, DefaultRootWindow(dpy), XA_NET_SUPPORTED,
         0, UINT_MAX, False, XA_ATOM, &type, &format,&nitems,
         &bytes_after, (unsigned char **) &prop);

   if (!prop || type != XA_ATOM)
      return 0;

   for (i = 0; i < nitems; i++)
   {
      if (prop[i] == atom)
      {
         XFree(prop);
         return 1;
      }
   }

   XFree(prop);

   return 0;
}
