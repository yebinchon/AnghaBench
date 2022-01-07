
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void const* dictContent; } ;
typedef TYPE_1__ ZSTD_DDict ;


 int assert (int ) ;

const void* ZSTD_DDict_dictContent(const ZSTD_DDict* ddict)
{
    assert(ddict != ((void*)0));
    return ddict->dictContent;
}
