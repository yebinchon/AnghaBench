
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; } ;


 int VCOS_LOG_CATEGORY ;
 TYPE_1__ mmal_log_category ;
 int mmal_log_level ;
 int vcos_log_unregister (int ) ;

void mmal_logging_deinit(void)
{
   mmal_log_level = mmal_log_category.level;
   vcos_log_unregister(VCOS_LOG_CATEGORY);
}
