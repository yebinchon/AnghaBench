
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* impl; } ;
struct TYPE_3__ {int (* Name ) () ;} ;
typedef TYPE_2__ PROTO ;


 scalar_t__ StrCmp (int ,int ) ;
 int stub1 () ;
 int stub2 () ;

int ProtoCompare(void *p1, void *p2)
{
 PROTO *proto_1, *proto_2;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }

 proto_1 = (PROTO *)p1;
 proto_2 = (PROTO *)p2;

 if (StrCmp(proto_1->impl->Name(), proto_2->impl->Name()) == 0)
 {
  return 1;
 }

 return 0;
}
