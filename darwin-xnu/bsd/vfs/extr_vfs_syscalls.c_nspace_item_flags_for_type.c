
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nspace_type_t ;




 int NSPACE_ITEM_NSPACE_EVENT ;
 int NSPACE_ITEM_SNAPSHOT_EVENT ;
 int printf (char*,int) ;

__attribute__((used)) static inline int nspace_item_flags_for_type(nspace_type_t nspace_type)
{
 switch(nspace_type) {
  case 129:
   return NSPACE_ITEM_NSPACE_EVENT;
  case 128:
   return NSPACE_ITEM_SNAPSHOT_EVENT;
  default:
   printf("nspace_item_flags_for_type: invalid type %u\n", (int)nspace_type);
   return 0;
 }
}
