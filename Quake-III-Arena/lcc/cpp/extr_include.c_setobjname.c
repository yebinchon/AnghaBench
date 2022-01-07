
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ domalloc (int) ;
 char* objname ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

void
setobjname(char *f)
{
 int n = strlen(f);
 objname = (char*)domalloc(n+5);
 strcpy(objname,f);
 if(objname[n-2]=='.'){
  strcpy(objname+n-1,"$O: ");
 }else{
  strcpy(objname+n,"$O: ");
 }
}
