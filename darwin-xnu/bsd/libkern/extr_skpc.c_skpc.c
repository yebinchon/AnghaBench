
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



int
skpc(int mask0, int size, char *cp0)
{
 u_char *cp, *end, mask;

 mask = mask0;
 cp = (u_char *)cp0;
 for (end = &cp[size]; cp < end && *cp == mask; ++cp);
 return (end - cp);
}
