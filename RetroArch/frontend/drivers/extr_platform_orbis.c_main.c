
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int confLink; } ;
typedef TYPE_1__ OrbisGlobalConf ;


 TYPE_1__* myConf ;
 int ps4LinkFinish () ;
 int ps4LinkInitWithConf (int ) ;
 int rarch_main (int,char**,int *) ;
 int sceSystemServiceHideSplashScreen () ;
 int sscanf (char*,char*,uintptr_t*) ;

int main(int argc, char *argv[])
{
   int ret;

   sceSystemServiceHideSplashScreen();

 uintptr_t intptr=0;
 sscanf(argv[1],"%p",&intptr);
 myConf=(OrbisGlobalConf *)intptr;
 ret=ps4LinkInitWithConf(myConf->confLink);
 if(!ret)
 {
  ps4LinkFinish();
  return -1;
 }

   return rarch_main(argc, argv, ((void*)0));
}
