
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* BotLibShutdown ) () ;} ;


 TYPE_1__* botlib_export ;
 int stub1 () ;

int SV_BotLibShutdown( void ) {

 if ( !botlib_export ) {
  return -1;
 }

 return botlib_export->BotLibShutdown();
}
