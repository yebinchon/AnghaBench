
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savestate_state {size_t pos; int member_0; } ;


 int PicoStateFP (struct savestate_state*,int,int *,int ,int *,int ) ;
 int state_fseek ;
 int state_skip ;

size_t retro_serialize_size(void)
{
 struct savestate_state state = { 0, };
 int ret;

 ret = PicoStateFP(&state, 1, ((void*)0), state_skip, ((void*)0), state_fseek);
 if (ret != 0)
  return 0;

 return state.pos;
}
