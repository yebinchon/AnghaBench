
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ samples; } ;
typedef TYPE_1__ rwav_t ;


 int free (void*) ;

void rwav_free(rwav_t *rwav)
{
   free((void*)rwav->samples);
}
