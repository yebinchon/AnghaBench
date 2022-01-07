
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VCOS_LOG_CAT_T ;
struct TYPE_2__ {int * log_category; } ;


 TYPE_1__ cmd_globals ;

void vcos_cmd_always_log_output( VCOS_LOG_CAT_T *log_category )
{
    cmd_globals.log_category = log_category;
}
