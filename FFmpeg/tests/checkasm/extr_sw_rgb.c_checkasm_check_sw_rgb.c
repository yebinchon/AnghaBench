
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_shuffle_bytes (int ,char*) ;
 int check_uyvy_to_422p () ;
 int ff_sws_rgb2rgb_init () ;
 int report (char*) ;
 int shuffle_bytes_0321 ;
 int shuffle_bytes_1230 ;
 int shuffle_bytes_2103 ;
 int shuffle_bytes_3012 ;
 int shuffle_bytes_3210 ;

void checkasm_check_sw_rgb(void)
{
    ff_sws_rgb2rgb_init();

    check_shuffle_bytes(shuffle_bytes_2103, "shuffle_bytes_2103");
    report("shuffle_bytes_2103");

    check_shuffle_bytes(shuffle_bytes_0321, "shuffle_bytes_0321");
    report("shuffle_bytes_0321");

    check_shuffle_bytes(shuffle_bytes_1230, "shuffle_bytes_1230");
    report("shuffle_bytes_1230");

    check_shuffle_bytes(shuffle_bytes_3012, "shuffle_bytes_3012");
    report("shuffle_bytes_3012");

    check_shuffle_bytes(shuffle_bytes_3210, "shuffle_bytes_3210");
    report("shuffle_bytes_3210");

    check_uyvy_to_422p();
    report("uyvytoyuv422");
}
