
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int background; } ;
struct TYPE_6__ {TYPE_1__ window; } ;
typedef TYPE_2__ itemDef_t ;
struct TYPE_7__ {int (* registerShaderNoMip ) (char const*) ;} ;


 TYPE_4__* DC ;
 scalar_t__ String_Parse (char**,char const**) ;
 int stub1 (char const*) ;

void Script_SetBackground(itemDef_t *item, char **args) {
  const char *name;

  if (String_Parse(args, &name)) {
    item->window.background = DC->registerShaderNoMip(name);
  }
}
