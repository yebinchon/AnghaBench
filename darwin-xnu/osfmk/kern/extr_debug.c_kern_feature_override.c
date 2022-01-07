
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int fdisables ;
typedef int boolean_t ;


 int KF_INITIALIZED ;
 scalar_t__ PE_parse_boot_argn (char*,int*,int) ;
 int kern_feature_overrides ;

boolean_t kern_feature_override(uint32_t fmask) {
 if (kern_feature_overrides == 0) {
  uint32_t fdisables = 0;



  if (PE_parse_boot_argn("validation_disables", &fdisables, sizeof(fdisables))) {
   fdisables |= KF_INITIALIZED;
   kern_feature_overrides = fdisables;
  } else {
   kern_feature_overrides |= KF_INITIALIZED;
  }
 }
 return ((kern_feature_overrides & fmask) == fmask);
}
