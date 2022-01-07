
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
struct TYPE_9__ {scalar_t__ status; scalar_t__ tag; scalar_t__ oldstatus; TYPE_2__ thinker; } ;


 int MAXPLATS ;
 TYPE_4__** activeplats ;
 scalar_t__ in_stasis ;

void EV_StopPlat(line_t* line)
{
    int j;

    for (j = 0;j < MAXPLATS;j++)
 if (activeplats[j]
     && ((activeplats[j])->status != in_stasis)
     && ((activeplats[j])->tag == line->tag))
 {
     (activeplats[j])->oldstatus = (activeplats[j])->status;
     (activeplats[j])->status = in_stasis;
     (activeplats[j])->thinker.function.acv = (actionf_v)((void*)0);
 }
}
