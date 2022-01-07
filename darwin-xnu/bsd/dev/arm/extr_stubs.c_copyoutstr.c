
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;


 int EFAULT ;
 int ENAMETOOLONG ;
 scalar_t__ copyout (void const*,int ,size_t) ;
 size_t min (size_t,size_t) ;
 int strlen (void const*) ;

int
copyoutstr(const void *from, user_addr_t to, size_t maxlen, size_t * lencopied)
{
 size_t slen;
 size_t len;
 int error = 0;

 slen = strlen(from) + 1;
 if (slen > maxlen)
  error = ENAMETOOLONG;

 len = min(maxlen, slen);
 if (copyout(from, to, len))
  error = EFAULT;
 *lencopied = len;

 return error;
}
