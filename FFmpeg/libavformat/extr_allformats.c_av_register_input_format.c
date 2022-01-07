
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVInputFormat ;


 int av_format_init_next ;
 int av_format_next_init ;
 int ff_thread_once (int *,int ) ;

void av_register_input_format(AVInputFormat *format)
{
    ff_thread_once(&av_format_next_init, av_format_init_next);
}
