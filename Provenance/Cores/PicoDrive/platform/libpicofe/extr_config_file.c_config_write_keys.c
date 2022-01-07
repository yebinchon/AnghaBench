
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mask; int * name; } ;
struct TYPE_3__ {int mask; int * name; } ;
typedef int FILE ;


 int IN_BINDTYPE_EMU ;
 int IN_BINDTYPE_PLAYER12 ;
 size_t IN_BIND_OFFS (int,int ) ;
 int IN_CFG_BIND_COUNT ;
 int IN_MAX_DEVS ;
 int array_size (int*) ;
 TYPE_2__* emuctrl_actions ;
 int fprintf (int *,char*,...) ;
 int* in_adev ;
 int in_get_config (int,int ,int*) ;
 int* in_get_dev_binds (int) ;
 char* in_get_dev_name (int,int ,int ) ;
 char* in_get_key_name (int,int) ;
 TYPE_1__* me_ctrl_actions ;
 char* mystrip (char*) ;
 int strncpy (char*,int *,int) ;

void config_write_keys(FILE *f)
{
 int d;

 for (d = 0; d < IN_MAX_DEVS; d++)
 {
  const int *binds = in_get_dev_binds(d);
  const char *name = in_get_dev_name(d, 0, 0);
  int k, count = 0;

  if (binds == ((void*)0) || name == ((void*)0))
   continue;

  fprintf(f, "binddev = %s\n", name);
  in_get_config(d, IN_CFG_BIND_COUNT, &count);

  for (k = 0; k < count; k++)
  {
   int i, kbinds, mask;
   char act[32];

   act[0] = act[31] = 0;
   name = in_get_key_name(d, k);

   kbinds = binds[IN_BIND_OFFS(k, IN_BINDTYPE_PLAYER12)];
   for (i = 0; kbinds && me_ctrl_actions[i].name != ((void*)0); i++) {
    mask = me_ctrl_actions[i].mask;
    if (mask & kbinds) {
     strncpy(act, me_ctrl_actions[i].name, 31);
     fprintf(f, "bind %s = player1 %s\n", name, mystrip(act));
     kbinds &= ~mask;
    }
    mask = me_ctrl_actions[i].mask << 16;
    if (mask & kbinds) {
     strncpy(act, me_ctrl_actions[i].name, 31);
     fprintf(f, "bind %s = player2 %s\n", name, mystrip(act));
     kbinds &= ~mask;
    }
   }

   kbinds = binds[IN_BIND_OFFS(k, IN_BINDTYPE_EMU)];
   for (i = 0; kbinds && emuctrl_actions[i].name != ((void*)0); i++) {
    mask = emuctrl_actions[i].mask;
    if (mask & kbinds) {
     strncpy(act, emuctrl_actions[i].name, 31);
     fprintf(f, "bind %s = %s\n", name, mystrip(act));
     kbinds &= ~mask;
    }
   }
  }
 }
}
