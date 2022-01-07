
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int * impl; } ;
typedef int PROTO_IMPL ;
typedef TYPE_1__ PROTO ;


 int Free (TYPE_1__*) ;
 TYPE_1__* ProtoGet (scalar_t__) ;
 scalar_t__ ProtoNum () ;
 int ReleaseList (int *) ;
 int * protocols ;

void ProtoFree()
{
 UINT i;
 PROTO_IMPL *impl;

 for (i = 0; i < ProtoNum(); ++i)
 {
  PROTO *proto = ProtoGet(i);
  impl = proto->impl;
  Free(proto);
 }

 ReleaseList(protocols);
 protocols = ((void*)0);
}
