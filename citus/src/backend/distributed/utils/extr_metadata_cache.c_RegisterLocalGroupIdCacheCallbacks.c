
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int CacheRegisterRelcacheCallback (int ,int ) ;
 int InvalidateLocalGroupIdRelationCacheCallback ;

__attribute__((used)) static void
RegisterLocalGroupIdCacheCallbacks(void)
{

 CacheRegisterRelcacheCallback(InvalidateLocalGroupIdRelationCacheCallback,
          (Datum) 0);
}
