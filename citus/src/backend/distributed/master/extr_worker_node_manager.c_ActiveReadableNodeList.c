
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int * FilterActiveNodeListFunc (int ,int ) ;
 int NoLock ;
 int NodeIsReadable ;

List *
ActiveReadableNodeList(void)
{
 return FilterActiveNodeListFunc(NoLock, NodeIsReadable);
}
