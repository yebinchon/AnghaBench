
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef int * MemoryContext ;
typedef int * HeapTuple ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_extension_extname ;
 int Anum_pg_extension_extversion ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char*) ;
 int DatumGetTextPP (int ) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int ExtensionNameIndexId ;
 int ExtensionRelationId ;
 int F_NAMEEQ ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int InitializeCaches () ;
 int * MemoryContextSwitchTo (int *) ;
 int * MetadataCacheMemoryContext ;
 int RelationGetDescr (int *) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int heap_close (int *,int ) ;
 int heap_getattr (int *,int,int ,int*) ;
 int * heap_open (int ,int ) ;
 int systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;
 char* text_to_cstring (int ) ;

__attribute__((used)) static char *
InstalledExtensionVersion(void)
{
 Relation relation = ((void*)0);
 SysScanDesc scandesc;
 ScanKeyData entry[1];
 HeapTuple extensionTuple = ((void*)0);
 char *installedExtensionVersion = ((void*)0);

 InitializeCaches();

 relation = heap_open(ExtensionRelationId, AccessShareLock);

 ScanKeyInit(&entry[0], Anum_pg_extension_extname, BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum("citus"));

 scandesc = systable_beginscan(relation, ExtensionNameIndexId, 1,
          ((void*)0), 1, entry);

 extensionTuple = systable_getnext(scandesc);


 if (HeapTupleIsValid(extensionTuple))
 {
  MemoryContext oldMemoryContext = ((void*)0);
  int extensionIndex = Anum_pg_extension_extversion;
  TupleDesc tupleDescriptor = RelationGetDescr(relation);
  bool isNull = 0;

  Datum installedVersion = heap_getattr(extensionTuple, extensionIndex,
             tupleDescriptor, &isNull);

  if (isNull)
  {
   ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
       errmsg("citus extension version is null")));
  }


  oldMemoryContext = MemoryContextSwitchTo(MetadataCacheMemoryContext);

  installedExtensionVersion = text_to_cstring(DatumGetTextPP(installedVersion));

  MemoryContextSwitchTo(oldMemoryContext);
 }
 else
 {
  ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("citus extension is not loaded")));
 }

 systable_endscan(scandesc);

 heap_close(relation, AccessShareLock);

 return installedExtensionVersion;
}
