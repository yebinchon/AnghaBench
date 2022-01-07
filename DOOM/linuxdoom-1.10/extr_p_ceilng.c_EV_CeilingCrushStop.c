
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ tag; } ;
typedef TYPE_3__ line_t ;
typedef scalar_t__ actionf_v ;
struct TYPE_6__ {scalar_t__ acv; } ;
struct TYPE_7__ {TYPE_1__ function; } ;
struct TYPE_9__ {scalar_t__ tag; scalar_t__ direction; scalar_t__ olddirection; TYPE_2__ thinker; } ;


 int MAXCEILINGS ;
 TYPE_4__** activeceilings ;

int EV_CeilingCrushStop(line_t *line)
{
    int i;
    int rtn;

    rtn = 0;
    for (i = 0;i < MAXCEILINGS;i++)
    {
 if (activeceilings[i]
     && (activeceilings[i]->tag == line->tag)
     && (activeceilings[i]->direction != 0))
 {
     activeceilings[i]->olddirection = activeceilings[i]->direction;
     activeceilings[i]->thinker.function.acv = (actionf_v)((void*)0);
     activeceilings[i]->direction = 0;
     rtn = 1;
 }
    }


    return rtn;
}
