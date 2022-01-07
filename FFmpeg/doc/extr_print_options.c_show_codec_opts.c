
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avcodec_options ;
 int printf (char*) ;
 int show_opts (int ,int) ;

__attribute__((used)) static void show_codec_opts(void)
{
    printf("@section Codec AVOptions\n");
    show_opts(avcodec_options, 1);
}
