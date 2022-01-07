
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffered_size; } ;
typedef TYPE_1__ hb_track_t ;


 scalar_t__ MAX_BUFFERING ;

__attribute__((used)) static int mf_full( hb_track_t * track )
{
    if ( track->buffered_size > MAX_BUFFERING )
        return 1;

    return 0;
}
