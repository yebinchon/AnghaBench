
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int FALSE ;
 int TRUE ;
 int necp_addr_compare (struct sockaddr*,struct sockaddr*,int) ;

__attribute__((used)) static bool
necp_is_range_in_range(struct sockaddr *inner_range_start, struct sockaddr *inner_range_end, struct sockaddr *range_start, struct sockaddr *range_end)
{
 int cmp = 0;

 if (inner_range_start == ((void*)0) || inner_range_end == ((void*)0) || range_start == ((void*)0) || range_end == ((void*)0)) {
  return (FALSE);
 }


 cmp = necp_addr_compare(inner_range_start, range_start, 1);
 if (cmp != 0 && cmp != 1) {
  return (FALSE);
 }


 cmp = necp_addr_compare(inner_range_end, range_end, 1);
 if (cmp != 0 && cmp != -1) {
  return (FALSE);
 }

 return (TRUE);
}
