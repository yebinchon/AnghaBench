
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Filter (char*,char*,int) ;
 int MAX_QPATH ;

int Com_FilterPath(char *filter, char *name, int casesensitive)
{
 int i;
 char new_filter[MAX_QPATH];
 char new_name[MAX_QPATH];

 for (i = 0; i < MAX_QPATH-1 && filter[i]; i++) {
  if ( filter[i] == '\\' || filter[i] == ':' ) {
   new_filter[i] = '/';
  }
  else {
   new_filter[i] = filter[i];
  }
 }
 new_filter[i] = '\0';
 for (i = 0; i < MAX_QPATH-1 && name[i]; i++) {
  if ( name[i] == '\\' || name[i] == ':' ) {
   new_name[i] = '/';
  }
  else {
   new_name[i] = name[i];
  }
 }
 new_name[i] = '\0';
 return Com_Filter(new_filter, new_name, casesensitive);
}
