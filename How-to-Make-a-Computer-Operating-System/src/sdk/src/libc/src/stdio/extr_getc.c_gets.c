
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fgets (char*,int,int ) ;
 int stdin ;

int gets(char* buf){
 fgets(buf,512,stdin);
 return 1;
}
