
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;



__attribute__((used)) static
__inline int
port_match6(u_short *portptr, int nports, u_short port, int range_flag)
{
 if (!nports)
  return 1;
 if (range_flag) {
  if (portptr[0] <= port && port <= portptr[1]) {
   return 1;
  }
  nports -= 2;
  portptr += 2;
 }
 while (nports-- > 0) {
  if (*portptr++ == port) {
   return 1;
  }
 }
 return 0;
}
