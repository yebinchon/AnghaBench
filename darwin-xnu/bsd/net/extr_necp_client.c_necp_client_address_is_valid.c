
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int FALSE ;

__attribute__((used)) static inline bool
necp_client_address_is_valid(struct sockaddr *address)
{
 if (address->sa_family == AF_INET) {
  return (address->sa_len == sizeof(struct sockaddr_in));
 } else if (address->sa_family == AF_INET6) {
  return (address->sa_len == sizeof(struct sockaddr_in6));
 } else {
  return (FALSE);
 }
}
