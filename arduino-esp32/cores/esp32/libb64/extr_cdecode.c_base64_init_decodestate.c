
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ plainchar; int step; } ;
typedef TYPE_1__ base64_decodestate ;


 int step_a ;

void base64_init_decodestate(base64_decodestate* state_in){
  state_in->step = step_a;
  state_in->plainchar = 0;
}
