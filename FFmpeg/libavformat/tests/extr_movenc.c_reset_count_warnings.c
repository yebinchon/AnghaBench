
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_log_default_callback ;
 int av_log_set_callback (int ) ;

__attribute__((used)) static void reset_count_warnings(void)
{
    av_log_set_callback(av_log_default_callback);
}
