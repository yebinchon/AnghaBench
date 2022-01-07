
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ NUM ;
 int TRUE ;
 scalar_t__ getval (char*,int *,int ,int ) ;
 int israngesep ;

boolean_t
get_range_bounds(char *c, int64_t *lower, int64_t *upper)
{
 if (c == ((void*)0) || lower == ((void*)0) || upper == ((void*)0)) {
  return FALSE;
 }

 if (NUM != getval(c, lower, israngesep, TRUE)) {
  return FALSE;
 }

 while (*c != '\0') {
  if (*c == '_') {
   break;
  }
  c++;
 }

 if (*c == '_') {
  c++;
  if (NUM != getval(c, upper, israngesep, TRUE)) {
   return FALSE;
  }
 } else {
  return FALSE;
 }
 return TRUE;
}
