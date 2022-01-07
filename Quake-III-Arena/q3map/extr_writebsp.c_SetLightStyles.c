
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entity_t ;


 int Error (char*) ;
 int MAX_SWITCHED_LIGHTS ;
 scalar_t__ Q_strncasecmp (char const*,char*,int) ;
 int SetKeyValue (int *,char*,char*) ;
 char* ValueForKey (int *,char*) ;
 int * entities ;
 int num_entities ;
 int sprintf (char*,char*,int) ;
 int strcmp (char*,char const*) ;
 int strcpy (char*,char const*) ;

void SetLightStyles (void)
{
 int stylenum;
 const char *t;
 entity_t *e;
 int i, j;
 char value[10];
 char lighttargets[MAX_SWITCHED_LIGHTS][64];





 stylenum = 0;
 for (i=1 ; i<num_entities ; i++)
 {
  e = &entities[i];

  t = ValueForKey (e, "classname");
  if (Q_strncasecmp (t, "light", 5))
   continue;
  t = ValueForKey (e, "targetname");
  if (!t[0])
   continue;


  for (j=0 ; j<stylenum ; j++)
   if (!strcmp (lighttargets[j], t))
    break;
  if (j == stylenum)
  {
   if (stylenum == MAX_SWITCHED_LIGHTS)
    Error ("stylenum == MAX_SWITCHED_LIGHTS");
   strcpy (lighttargets[j], t);
   stylenum++;
  }
  sprintf (value, "%i", 32 + j);
  SetKeyValue (e, "style", value);
 }

}
