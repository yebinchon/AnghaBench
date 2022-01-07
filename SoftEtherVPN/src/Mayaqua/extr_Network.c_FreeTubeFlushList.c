
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int List; } ;
typedef TYPE_1__ TUBE_FLUSH_LIST ;
typedef int TUBE ;


 int Free (TYPE_1__*) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;
 int ReleaseTube (int *) ;

void FreeTubeFlushList(TUBE_FLUSH_LIST *f)
{
 UINT i;

 if (f == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(f->List);i++)
 {
  TUBE *t = LIST_DATA(f->List, i);

  ReleaseTube(t);
 }

 ReleaseList(f->List);

 Free(f);
}
