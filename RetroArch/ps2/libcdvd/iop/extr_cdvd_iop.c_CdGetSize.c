
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int volSize; } ;


 scalar_t__ CDVD_GetVolumeDescriptor () ;
 TYPE_1__ CDVolDesc ;
 scalar_t__ TRUE ;

unsigned int CdGetSize(void)
{
    if (CDVD_GetVolumeDescriptor() != TRUE)
        return TRUE;

    return CDVolDesc.volSize;
}
