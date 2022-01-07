
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* status; scalar_t__ portalflood; int plane; int winding; scalar_t__ removed; } ;
typedef TYPE_1__ vportal_t ;
struct TYPE_10__ {scalar_t__ mightsee; scalar_t__ depth; int portalplane; int source; TYPE_1__* portal; } ;
struct TYPE_9__ {TYPE_7__ pstack_head; TYPE_1__* base; } ;
typedef TYPE_2__ threaddata_t ;
typedef int data ;


 int RecursivePassageFlow (TYPE_1__*,TYPE_2__*,TYPE_7__*) ;
 int _printf (char*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int portallongs ;
 TYPE_1__** sorted_portals ;
 void* stat_done ;
 void* stat_working ;

void PassageFlow (int portalnum)
{
 threaddata_t data;
 int i;
 vportal_t *p;






 p = sorted_portals[portalnum];

 if (p->removed)
 {
  p->status = stat_done;
  return;
 }

 p->status = stat_working;



 memset (&data, 0, sizeof(data));
 data.base = p;

 data.pstack_head.portal = p;
 data.pstack_head.source = p->winding;
 data.pstack_head.portalplane = p->plane;
 data.pstack_head.depth = 0;
 for (i=0 ; i<portallongs ; i++)
  ((long *)data.pstack_head.mightsee)[i] = ((long *)p->portalflood)[i];

 RecursivePassageFlow (p, &data, &data.pstack_head);

 p->status = stat_done;







}
