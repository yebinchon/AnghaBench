
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DICT_NOTUSED (void*) ;
 int decrRefCount (void*) ;

void dictObjectDestructor(void *privdata, void *val)
{
    DICT_NOTUSED(privdata);

    if (val == ((void*)0)) return;
    decrRefCount(val);
}
