
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* pmCPUControl ) (int ,void*) ;} ;


 TYPE_1__* pmDispatch ;
 int stub1 (int ,void*) ;

int
pmCPUControl(uint32_t cmd, void *datap)
{
    int rc = -1;

    if (pmDispatch != ((void*)0)
 && pmDispatch->pmCPUControl != ((void*)0))
 rc = (*pmDispatch->pmCPUControl)(cmd, datap);

    return(rc);
}
