
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int BinaryOutputFunctionDefined (scalar_t__) ;
 scalar_t__ FirstNormalObjectId ;
 char TYPCATEGORY_ARRAY ;
 char TYPCATEGORY_COMPOSITE ;
 int get_type_category_preferred (scalar_t__,char*,int*) ;

bool
CanUseBinaryCopyFormatForType(Oid typeId)
{
 if (!BinaryOutputFunctionDefined(typeId))
 {
  return 0;
 }

 if (typeId >= FirstNormalObjectId)
 {
  char typeCategory = '\0';
  bool typePreferred = 0;

  get_type_category_preferred(typeId, &typeCategory, &typePreferred);
  if (typeCategory == TYPCATEGORY_ARRAY ||
   typeCategory == TYPCATEGORY_COMPOSITE)
  {
   return 0;
  }
 }

 return 1;
}
