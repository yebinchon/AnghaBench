
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int NoLock ;
 int * ReferenceTablePlacementNodeList (int ) ;
 int list_length (int *) ;

int
ReferenceTableReplicationFactor(void)
{
 List *nodeList = ReferenceTablePlacementNodeList(NoLock);
 int replicationFactor = list_length(nodeList);
 return replicationFactor;
}
