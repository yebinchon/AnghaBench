
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
typedef TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_7__ {int config_size; int * pconfig; } ;
typedef TYPE_2__ VCHIQ_GET_CONFIG_T ;
typedef int VCHIQ_CONFIG_T ;
struct TYPE_6__ {int fd; } ;


 int RETRY (int,int ) ;
 int VCHIQ_ERROR ;
 int VCHIQ_IOC_GET_CONFIG ;
 int VCHIQ_SUCCESS ;
 int ioctl (int ,int ,TYPE_2__*) ;
 int is_valid_instance (TYPE_1__*) ;

VCHIQ_STATUS_T
vchiq_get_config(VCHIQ_INSTANCE_T instance,
   int config_size,
   VCHIQ_CONFIG_T *pconfig)
{
   VCHIQ_GET_CONFIG_T args;
   int ret;

   if (!is_valid_instance(instance))
      return VCHIQ_ERROR;

   args.config_size = config_size;
   args.pconfig = pconfig;

   RETRY(ret, ioctl(instance->fd, VCHIQ_IOC_GET_CONFIG, &args));

   return (ret >= 0) ? VCHIQ_SUCCESS : VCHIQ_ERROR;
}
