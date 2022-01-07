
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_error; int cond; } ;
typedef TYPE_1__ rsd_t ;


 int scond_signal (int ) ;

__attribute__((used)) static void err_cb(void *userdata)
{
   rsd_t *rsd = (rsd_t*)userdata;
   rsd->has_error = 1;
   scond_signal(rsd->cond);
}
