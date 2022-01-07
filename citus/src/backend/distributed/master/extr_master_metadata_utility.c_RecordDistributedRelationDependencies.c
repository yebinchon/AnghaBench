
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ objectSubId; int objectId; int classId; int member_2; int member_1; int member_0; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int Node ;


 int DEPENDENCY_NORMAL ;
 int ExtensionRelationId ;
 int RelationRelationId ;
 int get_extension_oid (char*,int) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static void
RecordDistributedRelationDependencies(Oid distributedRelationId, Node *distributionKey)
{
 ObjectAddress relationAddr = { 0, 0, 0 };
 ObjectAddress citusExtensionAddr = { 0, 0, 0 };

 relationAddr.classId = RelationRelationId;
 relationAddr.objectId = distributedRelationId;
 relationAddr.objectSubId = 0;

 citusExtensionAddr.classId = ExtensionRelationId;
 citusExtensionAddr.objectId = get_extension_oid("citus", 0);
 citusExtensionAddr.objectSubId = 0;


 recordDependencyOn(&relationAddr, &citusExtensionAddr, DEPENDENCY_NORMAL);
}
