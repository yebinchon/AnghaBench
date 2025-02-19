
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int StrCmp (char*,char*) ;

int CompareCandidateStr(void *p1, void *p2)
{
 char *s1, *s2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 s1 = *(char **)p1;
 s2 = *(char **)p2;
 if (s1 == ((void*)0) || s2 == ((void*)0))
 {
  return 0;
 }

 if (s1[0] == '[' && s2[0] != '[')
 {
  return -1;
 }
 else if (s2[0] == '[' && s1[0] != '[')
 {
  return 1;
 }

 return StrCmp(s1, s2);
}
