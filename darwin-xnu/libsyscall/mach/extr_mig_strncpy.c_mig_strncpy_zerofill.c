
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

int
mig_strncpy_zerofill(
    char *dest,
    const char *src,
    int len)
{
 int i;
 boolean_t terminated = FALSE;
 int retval = 0;

 if (len <= 0 || dest == 0) {
  return 0;
 }

 if (src == 0) {
  terminated = TRUE;
 }

 for (i = 1; i < len; i++) {
  if (!terminated) {
   if (!(*dest++ = *src++)) {
    retval = i;
    terminated = TRUE;
   }
  } else {
   *dest++ = '\0';
  }
 }

 *dest = '\0';
 if (!terminated) {
  retval = i;
 }

 return retval;
}
