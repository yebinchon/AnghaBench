
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int vidclk; int extclk; } ;
typedef TYPE_1__ VideoState ;


 int set_clock (int *,double,int) ;
 int sync_clock_to_slave (int *,int *) ;

__attribute__((used)) static void update_video_pts(VideoState *is, double pts, int64_t pos, int serial) {

    set_clock(&is->vidclk, pts, serial);
    sync_clock_to_slave(&is->extclk, &is->vidclk);
}
