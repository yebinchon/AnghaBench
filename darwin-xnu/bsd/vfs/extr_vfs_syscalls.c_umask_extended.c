
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umask_extended_args {scalar_t__ xsecurity; int newmask; } ;
typedef int proc_t ;
typedef scalar_t__ kauth_filesec_t ;
typedef int int32_t ;


 scalar_t__ KAUTH_FILESEC_NONE ;
 scalar_t__ USER_ADDR_NULL ;
 int kauth_copyinfilesec (scalar_t__,scalar_t__*) ;
 int kauth_filesec_free (scalar_t__) ;
 int umask1 (int ,int ,scalar_t__,int *) ;

int
umask_extended(proc_t p, struct umask_extended_args *uap, int32_t *retval)
{
 int ciferror;
 kauth_filesec_t xsecdst;

 xsecdst = KAUTH_FILESEC_NONE;
 if (uap->xsecurity != USER_ADDR_NULL) {
  if ((ciferror = kauth_copyinfilesec(uap->xsecurity, &xsecdst)) != 0)
   return ciferror;
 } else {
  xsecdst = KAUTH_FILESEC_NONE;
 }

 ciferror = umask1(p, uap->newmask, xsecdst, retval);

 if (xsecdst != KAUTH_FILESEC_NONE)
  kauth_filesec_free(xsecdst);
 return ciferror;
}
