
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int info; } ;
typedef TYPE_1__ info_list_t ;
typedef int hb_work_info_t ;


 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static void remember_info( info_list_t *info_list, hb_work_info_t *info )
{
    for ( ; info_list->count; ++info_list )
    {
        if ( memcmp( &info_list->info, info, sizeof(*info) ) == 0 )
        {

            ++info_list->count;
            return;
        }
    }




    info_list->count = 1;
    info_list->info = *info;
}
