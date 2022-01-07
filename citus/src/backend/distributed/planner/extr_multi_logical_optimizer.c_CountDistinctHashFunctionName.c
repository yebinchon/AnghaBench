
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;



 char const* HLL_HASH_ANY_FUNC_NAME ;
 char const* HLL_HASH_BIGINT_FUNC_NAME ;
 char const* HLL_HASH_INTEGER_FUNC_NAME ;
 char const* HLL_HASH_TEXT_FUNC_NAME ;





__attribute__((used)) static const char *
CountDistinctHashFunctionName(Oid argumentType)
{

 switch (argumentType)
 {
  case 131:
  {
   return HLL_HASH_INTEGER_FUNC_NAME;
  }

  case 130:
  {
   return HLL_HASH_BIGINT_FUNC_NAME;
  }

  case 129:
  case 132:
  case 128:
  {
   return HLL_HASH_TEXT_FUNC_NAME;
  }

  default:
  {
   return HLL_HASH_ANY_FUNC_NAME;
  }
 }
}
