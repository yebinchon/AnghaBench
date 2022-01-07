
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {unsigned int mask; unsigned int compare; } ;
typedef TYPE_1__ ipFilter_t ;
typedef int byte ;


 int G_Printf (char*,char*) ;
 int atoi (char*) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean StringToFilter (char *s, ipFilter_t *f)
{
 char num[128];
 int i, j;
 byte b[4];
 byte m[4];

 for (i=0 ; i<4 ; i++)
 {
  b[i] = 0;
  m[i] = 0;
 }

 for (i=0 ; i<4 ; i++)
 {
  if (*s < '0' || *s > '9')
  {
   if (*s == '*')
   {

    s++;
    if (!*s)
     break;
    s++;
    continue;
   }
   G_Printf( "Bad filter address: %s\n", s );
   return qfalse;
  }

  j = 0;
  while (*s >= '0' && *s <= '9')
  {
   num[j++] = *s++;
  }
  num[j] = 0;
  b[i] = atoi(num);
  m[i] = 255;

  if (!*s)
   break;
  s++;
 }

 f->mask = *(unsigned *)m;
 f->compare = *(unsigned *)b;

 return qtrue;
}
