
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int d_name; } ;
struct TYPE_5__ {int count; TYPE_2__** namelist; } ;
typedef TYPE_1__ STATE_T ;


 int atoi (int ) ;
 int error (char*) ;
 TYPE_1__* malloc (int) ;
 int scandir (char const*,TYPE_2__***,int ,int ) ;
 int seq_compare ;
 int seq_filter ;

__attribute__((used)) static STATE_T *read_state(const char *dir)
{
    STATE_T *state = malloc(sizeof(STATE_T));
    int i;

    if (state)
    {
 state->count = scandir(dir, &state->namelist, seq_filter, seq_compare);

 for (i = 0; i < state->count; i++)
 {
     int num = atoi(state->namelist[i]->d_name);
     if (i != num)
  error("Overlay sequence error");
 }
    }
    return state;
}
