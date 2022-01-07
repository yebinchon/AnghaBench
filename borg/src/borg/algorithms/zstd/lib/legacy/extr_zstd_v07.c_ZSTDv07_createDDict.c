
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * member_2; int * member_1; int * member_0; } ;
typedef TYPE_1__ ZSTDv07_customMem ;
typedef int ZSTDv07_DDict ;


 int * ZSTDv07_createDDict_advanced (void const*,size_t,TYPE_1__ const) ;

ZSTDv07_DDict* ZSTDv07_createDDict(const void* dict, size_t dictSize)
{
    ZSTDv07_customMem const allocator = { ((void*)0), ((void*)0), ((void*)0) };
    return ZSTDv07_createDDict_advanced(dict, dictSize, allocator);
}
