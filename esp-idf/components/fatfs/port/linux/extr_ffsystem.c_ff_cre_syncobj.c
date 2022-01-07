
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * FF_SYNC_t ;
typedef int BYTE ;



int ff_cre_syncobj(BYTE vol, FF_SYNC_t* sobj)
{
    *sobj = ((void*)0);
    return 1;
}
