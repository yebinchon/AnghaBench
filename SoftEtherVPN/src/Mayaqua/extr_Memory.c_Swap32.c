
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BYTE ;



UINT Swap32(UINT value)
{
 UINT r;
 ((BYTE *)&r)[0] = ((BYTE *)&value)[3];
 ((BYTE *)&r)[1] = ((BYTE *)&value)[2];
 ((BYTE *)&r)[2] = ((BYTE *)&value)[1];
 ((BYTE *)&r)[3] = ((BYTE *)&value)[0];
 return r;
}
