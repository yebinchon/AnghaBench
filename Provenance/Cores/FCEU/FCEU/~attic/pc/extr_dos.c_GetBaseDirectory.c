
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 scalar_t__* BaseDirectory ;
 char* arg0 ;
 int * malloc (int) ;
 int strlen (char*) ;
 int strncpy (int *,char*,int) ;

uint8 *GetBaseDirectory(void)
{
 int x=0;
 uint8 *ret = 0;

 if(arg0)
  for(x=strlen(arg0);x>=0;x--)
  {
   if(arg0[x]=='/' || arg0[x]=='\\')
   {
    ret = malloc(x + 1);
    strncpy(ret,arg0,x);
    break;
   }
  }

 if(!ret) { x=0; ret = malloc(1); }

 BaseDirectory[x]=0;
}
