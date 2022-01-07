
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VCOS_LOG_WARN ;
 int cechost_log_category ;
 int cecservice_log_initialised ;
 int vc_cec_log_info (char*) ;
 int vcos_log_register (char*,int *) ;
 int vcos_log_set_level (int *,int ) ;

__attribute__((used)) static void cecservice_logging_init() {
   if(cecservice_log_initialised == 0) {
      vcos_log_set_level(&cechost_log_category, VCOS_LOG_WARN);
      vcos_log_register("cecservice-client", &cechost_log_category);
      vc_cec_log_info("CEC HOST: log initialised");
      cecservice_log_initialised = 1;
   }
}
