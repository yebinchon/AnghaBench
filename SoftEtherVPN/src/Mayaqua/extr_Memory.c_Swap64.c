
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int BYTE ;



UINT64 Swap64(UINT64 value)
{
 UINT64 r;
 ((BYTE *)&r)[0] = ((BYTE *)&value)[7];
 ((BYTE *)&r)[1] = ((BYTE *)&value)[6];
 ((BYTE *)&r)[2] = ((BYTE *)&value)[5];
 ((BYTE *)&r)[3] = ((BYTE *)&value)[4];
 ((BYTE *)&r)[4] = ((BYTE *)&value)[3];
 ((BYTE *)&r)[5] = ((BYTE *)&value)[2];
 ((BYTE *)&r)[6] = ((BYTE *)&value)[1];
 ((BYTE *)&r)[7] = ((BYTE *)&value)[0];
 return r;
}
