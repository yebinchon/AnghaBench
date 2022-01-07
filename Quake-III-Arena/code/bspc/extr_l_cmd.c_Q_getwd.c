
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getcwd (char*,int) ;
 int getwd (char*) ;
 int strcat (char*,char*) ;

void Q_getwd (char *out)
{




   getwd(out);
   strcat(out, "/");

}
