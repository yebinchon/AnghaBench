
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int CacheRegisterRelcacheCallback (int ,int ) ;
 int InvalidateNodeRelationCacheCallback ;

__attribute__((used)) static void
RegisterWorkerNodeCacheCallbacks(void)
{

 CacheRegisterRelcacheCallback(InvalidateNodeRelationCacheCallback,
          (Datum) 0);
}
