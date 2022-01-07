
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nonblocking; int vss; } ;
typedef TYPE_1__ roar_t ;


 int ROAR_VS_FALSE ;
 int ROAR_VS_TRUE ;
 int fprintf (int ,char*) ;
 scalar_t__ roar_vs_blocking (int ,int ,int *) ;
 int stderr ;

__attribute__((used)) static void ra_set_nonblock_state(void *data, bool state)
{
   roar_t *roar = (roar_t*)data;
   if (roar_vs_blocking(roar->vss, (state) ? ROAR_VS_FALSE : ROAR_VS_TRUE, ((void*)0)) < 0)
      fprintf(stderr, "RetroArch [ERROR]: Can't set nonblocking. Will not be able to fast-forward.\n");
   roar->nonblocking = state;
}
