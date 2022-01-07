
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int samplesize; } ;
typedef TYPE_1__ rsound_t ;


 int retro_assert (int ) ;

int rsd_samplesize( rsound_t *rd )
{
   retro_assert(rd != ((void*)0));
   return rd->samplesize;
}
