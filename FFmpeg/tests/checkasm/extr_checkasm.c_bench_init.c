
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nop_time; } ;


 int bench_init_ffmpeg () ;
 int bench_init_linux () ;
 int measure_nop_time () ;
 int printf (char*,int,int) ;
 TYPE_1__ state ;

__attribute__((used)) static int bench_init(void)
{



    int ret = bench_init_ffmpeg();

    if (ret < 0)
        return ret;

    state.nop_time = measure_nop_time();
    printf("nop: %d.%d\n", state.nop_time/10, state.nop_time%10);
    return 0;
}
