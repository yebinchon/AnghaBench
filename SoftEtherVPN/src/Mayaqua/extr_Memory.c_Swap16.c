
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int BYTE ;



USHORT Swap16(USHORT value)
{
 USHORT r;
 ((BYTE *)&r)[0] = ((BYTE *)&value)[1];
 ((BYTE *)&r)[1] = ((BYTE *)&value)[0];
 return r;
}
