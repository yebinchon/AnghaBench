
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VCOS_LOG_CATEGORY ;
 int mmal_log_level ;
 int vcos_log_register (char*,int ) ;
 int vcos_log_set_level (int ,int ) ;

void mmal_logging_init(void)
{
   vcos_log_set_level(VCOS_LOG_CATEGORY, mmal_log_level);
   vcos_log_register("mmal", VCOS_LOG_CATEGORY);
}
