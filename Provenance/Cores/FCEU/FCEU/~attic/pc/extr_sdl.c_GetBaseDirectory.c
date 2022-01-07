
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8 ;


 int GetModuleFileName (int *,char*,int) ;
 int MAX_PATH ;
 char* getenv (char*) ;
 char* malloc (int) ;
 int printf (char*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

uint8 *GetBaseDirectory(void)
{
 uint8 *ol;
 uint8 *ret;

 ol=getenv("HOME");

 if(ol)
 {
  ret=malloc(strlen(ol)+1+strlen("./fceultra"));
  strcpy(ret,ol);
  strcat(ret,"/.fceultra");
 }
 else
 {
  ret=malloc(1);
  ret[0]=0;

  printf("%s\n",ret);
 }
 return(ret);
}
