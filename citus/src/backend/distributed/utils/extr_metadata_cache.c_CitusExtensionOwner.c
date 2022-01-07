
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ extensionOwner; } ;
struct TYPE_3__ {scalar_t__ extowner; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_extension ;


 int AccessShareLock ;
 int Anum_pg_extension_extname ;
 int Assert (int ) ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char*) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int ExtensionNameIndexId ;
 int ExtensionRelationId ;
 int F_NAMEEQ ;
 scalar_t__ GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 scalar_t__ InvalidOid ;
 TYPE_2__ MetadataCache ;
 int OidIsValid (scalar_t__) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int superuser_arg (scalar_t__) ;
 int systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;

extern Oid
CitusExtensionOwner(void)
{
 Relation relation = ((void*)0);
 SysScanDesc scandesc;
 ScanKeyData entry[1];
 HeapTuple extensionTuple = ((void*)0);
 Form_pg_extension extensionForm = ((void*)0);

 if (MetadataCache.extensionOwner != InvalidOid)
 {
  return MetadataCache.extensionOwner;
 }

 relation = heap_open(ExtensionRelationId, AccessShareLock);

 ScanKeyInit(&entry[0],
    Anum_pg_extension_extname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum("citus"));

 scandesc = systable_beginscan(relation, ExtensionNameIndexId, 1,
          ((void*)0), 1, entry);

 extensionTuple = systable_getnext(scandesc);


 if (HeapTupleIsValid(extensionTuple))
 {
  extensionForm = (Form_pg_extension) GETSTRUCT(extensionTuple);
  if (!superuser_arg(extensionForm->extowner))
  {
   ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
       errmsg("citus extension needs to be owned by superuser")));
  }
  MetadataCache.extensionOwner = extensionForm->extowner;
  Assert(OidIsValid(MetadataCache.extensionOwner));
 }
 else
 {
  ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("citus extension not loaded")));
 }

 systable_endscan(scandesc);

 heap_close(relation, AccessShareLock);

 return MetadataCache.extensionOwner;
}
