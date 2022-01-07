
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ unzFile ;
struct TYPE_2__ {scalar_t__ stream; } ;
typedef TYPE_1__ mz_compat ;



void* unzGetStream(unzFile file)
{
    mz_compat *compat = (mz_compat *)file;
    if (compat == ((void*)0))
        return ((void*)0);
    return (void *)compat->stream;
}
