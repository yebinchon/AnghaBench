
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsWhiteSpace (char) ;
 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void UnifyWhiteSpaces(char *string)
{
 char *ptr, *oldptr;

 for (ptr = oldptr = string; *ptr; oldptr = ptr)
 {
  while(*ptr && IsWhiteSpace(*ptr)) ptr++;
  if (ptr > oldptr)
  {


   if (oldptr > string && *ptr) *oldptr++ = ' ';

   if (ptr > oldptr) memmove(oldptr, ptr, strlen(ptr)+1);
  }
  while(*ptr && !IsWhiteSpace(*ptr)) ptr++;
 }
}
