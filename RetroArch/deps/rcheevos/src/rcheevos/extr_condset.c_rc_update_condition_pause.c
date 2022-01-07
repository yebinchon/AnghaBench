
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int pause; struct TYPE_3__* next; } ;
typedef TYPE_1__ rc_condition_t ;
__attribute__((used)) static void rc_update_condition_pause(rc_condition_t* condition, int* in_pause) {
  if (condition->next != 0) {
    rc_update_condition_pause(condition->next, in_pause);
  }

  switch (condition->type) {
    case 129:
      *in_pause = condition->pause = 1;
      break;

    case 131:
    case 128:
    case 132:
    case 130:
      condition->pause = *in_pause;
      break;

    default:
      *in_pause = condition->pause = 0;
      break;
  }
}
