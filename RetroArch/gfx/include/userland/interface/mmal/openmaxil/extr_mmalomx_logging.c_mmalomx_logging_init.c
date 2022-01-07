
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VCOS_LOG_CATEGORY ;
 int mmalomx_log_level ;
 int vcos_log_register (char*,int ) ;
 int vcos_log_set_level (int ,int ) ;

void mmalomx_logging_init(void)
{
   vcos_log_set_level(VCOS_LOG_CATEGORY, mmalomx_log_level);
   vcos_log_register("mmalomx", VCOS_LOG_CATEGORY);
}
