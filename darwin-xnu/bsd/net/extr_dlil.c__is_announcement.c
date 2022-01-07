
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;


 int FALSE ;

__attribute__((used)) static __inline__ int
_is_announcement(const struct sockaddr_in * sender_sin,
    const struct sockaddr_in * target_sin)
{
 if (sender_sin == ((void*)0)) {
  return (FALSE);
 }
 return (sender_sin->sin_addr.s_addr == target_sin->sin_addr.s_addr);
}
