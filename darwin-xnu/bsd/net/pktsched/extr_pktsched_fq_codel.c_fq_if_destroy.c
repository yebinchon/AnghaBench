
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * fqs_ifq; } ;
typedef TYPE_1__ fq_if_t ;


 int fq_if_purge (TYPE_1__*) ;
 int fq_if_zone ;
 int zfree (int ,TYPE_1__*) ;

void
fq_if_destroy(fq_if_t *fqs)
{
 fq_if_purge(fqs);
 fqs->fqs_ifq = ((void*)0);
 zfree(fq_if_zone, fqs);
}
