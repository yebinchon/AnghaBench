
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
struct sockaddr {scalar_t__ sa_len; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ socklen_t ;


 scalar_t__ MIN (unsigned int,scalar_t__) ;
 int copyout (struct sockaddr*,int ,unsigned int) ;

__attribute__((used)) static int
copyout_sa(struct sockaddr *fromsa, user_addr_t name, socklen_t *namelen)
{
 int error = 0;
 socklen_t sa_len = 0;
 ssize_t len;

 len = *namelen;
 if (len <= 0 || fromsa == 0) {
  len = 0;
 } else {



  sa_len = fromsa->sa_len;
  len = (((unsigned int)len) > (sa_len) ? (sa_len) : ((unsigned int)len));
  error = copyout(fromsa, name, (unsigned)len);
  if (error)
   goto out;
 }
 *namelen = sa_len;
out:
 return (0);
}
