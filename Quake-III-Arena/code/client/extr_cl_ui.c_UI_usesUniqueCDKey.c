
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int UI_HASUNIQUECDKEY ;
 scalar_t__ VM_Call (scalar_t__,int ) ;
 int qfalse ;
 scalar_t__ qtrue ;
 scalar_t__ uivm ;

qboolean UI_usesUniqueCDKey() {
 if (uivm) {
  return (VM_Call( uivm, UI_HASUNIQUECDKEY) == qtrue);
 } else {
  return qfalse;
 }
}
