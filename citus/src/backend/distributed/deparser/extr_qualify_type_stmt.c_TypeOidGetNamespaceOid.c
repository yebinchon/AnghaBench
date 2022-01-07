
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typnamespace; } ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int AccessShareLock ;
 int Anum_pg_type_oid ;
 scalar_t__ GETSTRUCT (int ) ;
 int TypeRelationId ;
 int get_catalog_object_by_oid (int ,int ,...) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;

__attribute__((used)) static Oid
TypeOidGetNamespaceOid(Oid typeOid)
{
 Form_pg_type typeData = ((void*)0);
 Relation catalog = heap_open(TypeRelationId, AccessShareLock);



 HeapTuple typeTuple = get_catalog_object_by_oid(catalog, typeOid);

 heap_close(catalog, AccessShareLock);

 typeData = (Form_pg_type) GETSTRUCT(typeTuple);

 return typeData->typnamespace;
}
