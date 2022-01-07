
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int CacheRegisterRelcacheCallback (int ,int ) ;
 int InvalidateForeignRelationGraphCacheCallback ;

__attribute__((used)) static void
RegisterForeignKeyGraphCacheCallbacks(void)
{

 CacheRegisterRelcacheCallback(InvalidateForeignRelationGraphCacheCallback,
          (Datum) 0);
}
