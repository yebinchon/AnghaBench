
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_log_set_callback (int ) ;
 int count_warnings ;
 scalar_t__ num_warnings ;

__attribute__((used)) static void init_count_warnings(void)
{
    av_log_set_callback(count_warnings);
    num_warnings = 0;
}
