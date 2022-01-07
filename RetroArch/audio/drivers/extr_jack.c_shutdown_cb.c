
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown; int cond; } ;
typedef TYPE_1__ jack_t ;


 int scond_signal (int ) ;

__attribute__((used)) static void shutdown_cb(void *data)
{
   jack_t *jd = (jack_t*)data;

   if (!jd)
      return;

   jd->shutdown = 1;



}
