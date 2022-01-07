
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avformat_options ;
 int printf (char*) ;
 int show_opts (int ,int ) ;

__attribute__((used)) static void show_format_opts(void)
{
    printf("@section Format AVOptions\n");
    show_opts(avformat_options, 0);
}
