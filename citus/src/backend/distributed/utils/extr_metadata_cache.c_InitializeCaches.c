
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int *,char*,int ) ;
 int * CacheMemoryContext ;
 int CreateCacheMemoryContext () ;
 int * DistShardCacheHash ;
 int * DistTableCacheHash ;
 int InitializeDistCache () ;
 int MemoryContextDelete (int *) ;
 int * MetadataCacheMemoryContext ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int RegisterForeignKeyGraphCacheCallbacks () ;
 int RegisterLocalGroupIdCacheCallbacks () ;
 int RegisterWorkerNodeCacheCallbacks () ;

__attribute__((used)) static void
InitializeCaches(void)
{
 static bool performedInitialization = 0;

 if (!performedInitialization)
 {
  MetadataCacheMemoryContext = ((void*)0);
  PG_TRY();
  {

   performedInitialization = 1;


   if (CacheMemoryContext == ((void*)0))
   {
    CreateCacheMemoryContext();
   }

   MetadataCacheMemoryContext = AllocSetContextCreate(
    CacheMemoryContext,
    "MetadataCacheMemoryContext",
    ALLOCSET_DEFAULT_SIZES);

   InitializeDistCache();
   RegisterForeignKeyGraphCacheCallbacks();
   RegisterWorkerNodeCacheCallbacks();
   RegisterLocalGroupIdCacheCallbacks();
  }
  PG_CATCH();
  {
   performedInitialization = 0;

   if (MetadataCacheMemoryContext != ((void*)0))
   {
    MemoryContextDelete(MetadataCacheMemoryContext);
   }

   MetadataCacheMemoryContext = ((void*)0);
   DistTableCacheHash = ((void*)0);
   DistShardCacheHash = ((void*)0);

   PG_RE_THROW();
  }
  PG_END_TRY();
 }
}
