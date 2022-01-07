
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int VOID ;



__inline VOID SW_ULONG_ASSIGN(void *dst, uint32 src)
{
 *((uint8*)dst+0)=*((uint8*)&src+3);
 *((uint8*)dst+1)=*((uint8*)&src+2);
 *((uint8*)dst+2)=*((uint8*)&src+1);
 *((uint8*)dst+3)=*((uint8*)&src+0);

}
