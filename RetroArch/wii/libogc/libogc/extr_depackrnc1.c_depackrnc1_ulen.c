
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 scalar_t__ RNC_FILE_IS_NOT_RNC ;
 scalar_t__ RNC_SIGNATURE ;
 scalar_t__ blong (unsigned char*) ;

s32 depackrnc1_ulen(void *packed)
{
    unsigned char *p = packed;
    if (blong (p) != RNC_SIGNATURE)
 return RNC_FILE_IS_NOT_RNC;
    return blong (p+4);
}
