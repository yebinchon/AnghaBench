
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * NewList (int ) ;
 int OvsGetProtoImpl () ;
 int ProtoAdd (int ) ;
 int ProtoCompare ;
 int ProtoFree () ;
 int * protocols ;

void ProtoInit()
{
 if (protocols != ((void*)0))
 {
  ProtoFree();
 }

 protocols = NewList(ProtoCompare);


 ProtoAdd(OvsGetProtoImpl());
}
