
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARAM_READ ;
 scalar_t__ AR_GetDMAStatus () ;
 int AR_StartDMA (int ,int ,int ,int) ;
 int DCInvalidateRange (char*,int) ;

void ARAMFetch(char *dst, char *src, int len)
{
    DCInvalidateRange(dst, len);
    AR_StartDMA(ARAM_READ, (u32) dst, (u32) src, len);
    while (AR_GetDMAStatus());
}
