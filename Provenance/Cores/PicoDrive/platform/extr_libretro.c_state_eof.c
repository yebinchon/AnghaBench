
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savestate_state {scalar_t__ pos; scalar_t__ size; } ;



size_t state_eof(void *file)
{
 struct savestate_state *state = file;

 return state->pos >= state->size;
}
