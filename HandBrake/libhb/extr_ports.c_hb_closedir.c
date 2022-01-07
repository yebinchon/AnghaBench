
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wdir; } ;
typedef TYPE_1__ HB_DIR ;


 int _wclosedir (int ) ;
 int closedir (TYPE_1__*) ;
 int free (TYPE_1__*) ;

int hb_closedir(HB_DIR *dir)
{







    return closedir(dir);

}
