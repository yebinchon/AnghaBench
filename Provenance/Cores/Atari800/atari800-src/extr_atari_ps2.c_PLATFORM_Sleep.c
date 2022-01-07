
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_count; scalar_t__ init_count; scalar_t__ count; scalar_t__ attr; } ;
typedef TYPE_1__ ee_sema_t ;


 int CreateSema (TYPE_1__*) ;
 int DeleteSema (int) ;
 scalar_t__ UI_is_active ;
 int WaitSema (int) ;
 int iSignalSema (int) ;

void PLATFORM_Sleep(double s)
{

 if (UI_is_active){
         int i,ret;
         for (i=0;i<s * 100.0;i++){

   ee_sema_t sema;
                 sema.attr = 0;
                 sema.count = 0;
                 sema.init_count = 0;
                 sema.max_count = 1;
                 ret = CreateSema(&sema);
                 if (ret <= 0) {

                         return;
                 }

                 iSignalSema(ret);
                 WaitSema(ret);
                 DeleteSema(ret);
         }
 }
}
