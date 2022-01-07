
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int table; } ;
typedef TYPE_1__ VLC ;


 int av_freep (int *) ;

void ff_free_vlc(VLC *vlc)
{
    av_freep(&vlc->table);
}
