
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef size_t u_char ;



int
scanc(u_int size, u_char *cp, const u_char table[], int mask0)
{
 u_char *end;
 u_char mask;

 mask = mask0;
 for (end = &cp[size]; cp != end && (table[*cp] & mask) == 0; ++cp);
 return (end - cp);
}
