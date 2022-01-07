
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int error ;
 int sprintf (int ,char*,char*,int) ;

boolean_t
check_kr(int kr, char *fn) {
 if (kr) {
  sprintf(error, "%s() returned %d", fn, kr);
  return FALSE;
 }
 return TRUE;
}
