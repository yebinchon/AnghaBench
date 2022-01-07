
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* impl; } ;
struct TYPE_6__ {int (* Name ) () ;} ;
typedef TYPE_1__ PROTO_IMPL ;
typedef TYPE_2__ PROTO ;


 int Add (int *,TYPE_2__*) ;
 int Debug (char*,int ) ;
 TYPE_2__* Malloc (int) ;
 int * protocols ;
 int stub1 () ;

bool ProtoAdd(PROTO_IMPL *impl)
{
 PROTO *proto;

 if (protocols == ((void*)0) || impl == ((void*)0))
 {
  return 0;
 }

 proto = Malloc(sizeof(PROTO));
 proto->impl = impl;

 Add(protocols, proto);

 Debug("ProtoAdd(): added %s\n", proto->impl->Name());

 return 1;
}
