
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int nspace_type_t ;




 int NSPACE_ITEM_ALL_EVENT_TYPES ;
 int NSPACE_ITEM_NSPACE_EVENT ;
 int NSPACE_ITEM_SNAPSHOT_EVENT ;
 int printf (char*,int) ;

__attribute__((used)) static inline int nspace_flags_matches_handler(uint32_t event_flags, nspace_type_t nspace_type)
{
 switch(nspace_type) {
  case 129:
   return (event_flags & NSPACE_ITEM_ALL_EVENT_TYPES) == NSPACE_ITEM_NSPACE_EVENT;
  case 128:
   return (event_flags & NSPACE_ITEM_ALL_EVENT_TYPES) == NSPACE_ITEM_SNAPSHOT_EVENT;
  default:
   printf("nspace_flags_matches_handler: invalid type %u\n", (int)nspace_type);
   return 0;
 }
}
