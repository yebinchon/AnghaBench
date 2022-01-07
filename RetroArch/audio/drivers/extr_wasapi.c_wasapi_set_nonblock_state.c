
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blocking; } ;
typedef TYPE_1__ wasapi_t ;


 int RARCH_LOG (char*,char*) ;

__attribute__((used)) static void wasapi_set_nonblock_state(void *wh, bool nonblock)
{
   wasapi_t *w = (wasapi_t*)wh;

   RARCH_LOG("[WASAPI]: Sync %s.\n", nonblock ? "off" : "on");

   w->blocking = !nonblock;
}
