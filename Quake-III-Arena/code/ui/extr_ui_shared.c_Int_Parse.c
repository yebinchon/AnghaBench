
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 char* COM_ParseExt (char**,int ) ;
 int atoi (char*) ;
 int qfalse ;
 int qtrue ;

qboolean Int_Parse(char **p, int *i) {
 char *token;
 token = COM_ParseExt(p, qfalse);

 if (token && token[0] != 0) {
  *i = atoi(token);
  return qtrue;
 } else {
  return qfalse;
 }
}
