
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; } ;
struct TYPE_6__ {TYPE_1__ geometry; } ;
struct TYPE_7__ {TYPE_2__ info; scalar_t__ count; } ;
typedef TYPE_3__ info_list_t ;



__attribute__((used)) static int has_resolution_change( info_list_t *info_list )
{
    int w, h, i;

    if( !info_list[0].count )
        return 0;
    w = info_list[0].info.geometry.width;
    h = info_list[0].info.geometry.height;
    for ( i = 1; info_list[i].count; ++i )
    {
        if (w != info_list[i].info.geometry.width ||
            h != info_list[i].info.geometry.height)
            return 1;
    }
    return 0;
}
