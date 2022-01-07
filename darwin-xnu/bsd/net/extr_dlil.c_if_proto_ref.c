
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_proto {int refcount; } ;


 int atomic_add_32 (int *,int) ;

__attribute__((used)) static void
if_proto_ref(struct if_proto *proto)
{
 atomic_add_32(&proto->refcount, 1);
}
