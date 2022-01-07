
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {scalar_t__ ss_family; int ss_len; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ss ;
typedef scalar_t__ sa_family_t ;
typedef int errno_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int ENOBUFS ;
 struct sockaddr* dup_sockaddr (struct sockaddr*,int) ;
 int memset (struct sockaddr_storage*,int ,int) ;

__attribute__((used)) static errno_t
flow_divert_dup_addr(sa_family_t family, struct sockaddr *addr,
                     struct sockaddr **dup)
{
 int error = 0;
 struct sockaddr *result;
 struct sockaddr_storage ss;

 if (addr != ((void*)0)) {
  result = addr;
 } else {
  memset(&ss, 0, sizeof(ss));
  ss.ss_family = family;
  if (ss.ss_family == AF_INET) {
   ss.ss_len = sizeof(struct sockaddr_in);
  }





  else {
   error = EINVAL;
  }
  result = (struct sockaddr *)&ss;
 }

 if (!error) {
  *dup = dup_sockaddr(result, 1);
  if (*dup == ((void*)0)) {
   error = ENOBUFS;
  }
 }

 return error;
}
