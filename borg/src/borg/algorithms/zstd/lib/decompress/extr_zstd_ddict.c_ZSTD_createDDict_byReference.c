
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * member_2; int * member_1; int * member_0; } ;
typedef TYPE_1__ ZSTD_customMem ;
typedef int ZSTD_DDict ;


 int * ZSTD_createDDict_advanced (void const*,size_t,int ,int ,TYPE_1__ const) ;
 int ZSTD_dct_auto ;
 int ZSTD_dlm_byRef ;

ZSTD_DDict* ZSTD_createDDict_byReference(const void* dictBuffer, size_t dictSize)
{
    ZSTD_customMem const allocator = { ((void*)0), ((void*)0), ((void*)0) };
    return ZSTD_createDDict_advanced(dictBuffer, dictSize, ZSTD_dlm_byRef, ZSTD_dct_auto, allocator);
}
