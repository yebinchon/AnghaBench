
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savestate_state {long pos; int size; } ;






int state_fseek(void *file, long offset, int whence)
{
 struct savestate_state *state = file;

 switch (whence) {
 case 128:
  state->pos = offset;
  break;
 case 130:
  state->pos += offset;
  break;
 case 129:
  state->pos = state->size + offset;
  break;
 }
 return (int)state->pos;
}
