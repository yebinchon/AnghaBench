
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ idx; } ;
struct TYPE_5__ {TYPE_1__ lt_id; } ;
struct wq_prepost {TYPE_2__ wqte; } ;
struct TYPE_6__ {scalar_t__ nelem; } ;


 int assert (int) ;
 TYPE_3__ g_prepost_table ;
 int panic (char*) ;
 struct wq_prepost* wq_prepost_alloc (int,int) ;
 struct wq_prepost* wq_prepost_rpop (scalar_t__*,int) ;

__attribute__((used)) static struct wq_prepost *wq_get_prepost_obj(uint64_t *reserved, int type)
{
 struct wq_prepost *wqp = ((void*)0);





 if (reserved && *reserved) {
  wqp = wq_prepost_rpop(reserved, type);
  assert(wqp->wqte.lt_id.idx < g_prepost_table.nelem);
 } else {




  wqp = wq_prepost_alloc(type, 1);
 }

 if (wqp == ((void*)0))
  panic("Couldn't allocate prepost object!");
 return wqp;
}
