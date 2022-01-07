
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int Active; int lock; int TableList; TYPE_1__* Cedar; } ;
struct TYPE_12__ {scalar_t__ Metric; int GatewayAddress; } ;
struct TYPE_11__ {int Server; } ;
typedef TYPE_2__ L3TABLE ;
typedef TYPE_3__ L3SW ;


 int Copy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ GetServerCapsInt (int ,char*) ;
 int Insert (int ,TYPE_2__*) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int * Search (int ,TYPE_2__*) ;
 int Unlock (int ) ;
 TYPE_2__* ZeroMalloc (int) ;

bool L3AddTable(L3SW *s, L3TABLE *tbl)
{
 bool ret = 0;

 if (s == ((void*)0) || tbl == ((void*)0))
 {
  return 0;
 }

 if (tbl->Metric == 0 || tbl->GatewayAddress == 0 || tbl->GatewayAddress == 0xffffffff)
 {
  return 0;
 }

 Lock(s->lock);
 {
  if (LIST_NUM(s->TableList) >= GetServerCapsInt(s->Cedar->Server, "i_max_l3_table"))
  {

  }
  else
  {

   if (s->Active == 0)
   {
    if (Search(s->TableList, tbl) == ((void*)0))
    {
     L3TABLE *t = ZeroMalloc(sizeof(L3TABLE));

     Copy(t, tbl, sizeof(L3TABLE));

     Insert(s->TableList, t);

     ret = 1;
    }
   }
  }
 }
 Unlock(s->lock);

 return ret;
}
