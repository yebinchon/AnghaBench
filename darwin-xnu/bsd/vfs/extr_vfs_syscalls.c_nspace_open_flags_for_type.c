
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nspace_type_t ;


 int FREAD ;
 int FWRITE ;


 int O_EVTONLY ;
 int printf (char*,int) ;

__attribute__((used)) static inline int nspace_open_flags_for_type(nspace_type_t nspace_type)
{
 switch(nspace_type) {
  case 129:
   return FREAD | FWRITE | O_EVTONLY;
  case 128:
   return FREAD | O_EVTONLY;
  default:
   printf("nspace_open_flags_for_type: invalid type %u\n", (int)nspace_type);
   return 0;
 }
}
