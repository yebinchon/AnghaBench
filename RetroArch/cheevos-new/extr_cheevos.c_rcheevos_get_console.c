
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int console_id; } ;
struct TYPE_4__ {TYPE_1__ patchdata; } ;


 TYPE_2__ rcheevos_locals ;

int rcheevos_get_console(void)
{
   return rcheevos_locals.patchdata.console_id;
}
