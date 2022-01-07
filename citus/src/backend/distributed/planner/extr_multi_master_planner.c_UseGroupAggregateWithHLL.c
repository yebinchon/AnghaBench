
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int Oid ;


 char* GetConfigOption (int ,int,int) ;
 int HLL_EXTENSION_NAME ;
 int HLL_FORCE_GROUPAGG_GUC_NAME ;
 int OidIsValid (int ) ;
 int QueryContainsAggregateWithHLL (int *) ;
 int get_extension_oid (int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool
UseGroupAggregateWithHLL(Query *masterQuery)
{
 Oid hllId = get_extension_oid(HLL_EXTENSION_NAME, 1);
 const char *gucStrValue = ((void*)0);


 if (!OidIsValid(hllId))
 {
  return 0;
 }


 gucStrValue = GetConfigOption(HLL_FORCE_GROUPAGG_GUC_NAME, 1, 0);
 if (gucStrValue == ((void*)0) || strcmp(gucStrValue, "off") == 0)
 {
  return 0;
 }

 return QueryContainsAggregateWithHLL(masterQuery);
}
