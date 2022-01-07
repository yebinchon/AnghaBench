
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int printf (char*) ;
 int stderr ;

__attribute__((used)) static int bench_init_ffmpeg(void)
{




    fprintf(stderr, "checkasm: --bench is not supported on your system\n");
    return -1;

}
