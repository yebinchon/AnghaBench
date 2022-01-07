
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int FALSE ;
 int TRUE ;
 int necp_addr_compare (struct sockaddr*,struct sockaddr*,int) ;

__attribute__((used)) static bool
necp_is_addr_in_range(struct sockaddr *addr, struct sockaddr *range_start, struct sockaddr *range_end)
{
 int cmp = 0;

 if (addr == ((void*)0) || range_start == ((void*)0) || range_end == ((void*)0)) {
  return (FALSE);
 }


 cmp = necp_addr_compare(addr, range_start, 1);
 if (cmp != 0 && cmp != 1) {
  return (FALSE);
 }


 cmp = necp_addr_compare(addr, range_end, 1);
 if (cmp != 0 && cmp != -1) {
  return (FALSE);
 }

 return (TRUE);
}
