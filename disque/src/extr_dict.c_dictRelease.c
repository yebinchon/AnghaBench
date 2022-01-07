
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ht; } ;
typedef TYPE_1__ dict ;


 int _dictClear (TYPE_1__*,int *,int *) ;
 int zfree (TYPE_1__*) ;

void dictRelease(dict *d)
{
    _dictClear(d,&d->ht[0],((void*)0));
    _dictClear(d,&d->ht[1],((void*)0));
    zfree(d);
}
