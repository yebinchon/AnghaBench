
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int qfalse ;
 int qtrue ;
 int strlen (char const*) ;

__attribute__((used)) static qboolean strgtr(const char *s0, const char *s1) {
 int l0, l1, i;

 l0 = strlen(s0);
 l1 = strlen(s1);

 if (l1<l0) {
  l0 = l1;
 }

 for(i=0;i<l0;i++) {
  if (s1[i] > s0[i]) {
   return qtrue;
  }
  if (s1[i] < s0[i]) {
   return qfalse;
  }
 }
 return qfalse;
}
