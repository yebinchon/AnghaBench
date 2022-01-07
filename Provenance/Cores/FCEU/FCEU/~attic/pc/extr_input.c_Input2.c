
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * UsrInputType ;
 int * cortab ;
 int * cortabi ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void Input2(char *text)
{
 int y;

 for(y=0;y<6;y++)
  if(!strcmp(cortab[y],text))
   UsrInputType[1]=cortabi[y];
}
