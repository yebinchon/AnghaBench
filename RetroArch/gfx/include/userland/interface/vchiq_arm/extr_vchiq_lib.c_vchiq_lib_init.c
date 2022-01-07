
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int config ;
typedef int VCOS_MUTEX_T ;
typedef TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_9__ {int config_size; TYPE_3__* pconfig; } ;
typedef TYPE_2__ VCHIQ_GET_CONFIG_T ;
struct TYPE_10__ {scalar_t__ version; TYPE_2__* version_min; } ;
typedef TYPE_3__ VCHIQ_CONFIG_T ;
struct TYPE_8__ {int initialised; scalar_t__ fd; int use_close_delivered; int mutex; scalar_t__ used_services; } ;


 int O_RDWR ;
 int RETRY (int,int ) ;
 int VCHIQ_IOC_GET_CONFIG ;
 int VCHIQ_IOC_LIB_VERSION ;
 TYPE_2__* VCHIQ_VERSION ;
 scalar_t__ VCHIQ_VERSION_CLOSE_DELIVERED ;
 scalar_t__ VCHIQ_VERSION_LIB_VERSION ;
 scalar_t__ VCHIQ_VERSION_MIN ;
 int close (scalar_t__) ;
 scalar_t__ dup (int const) ;
 int ioctl (scalar_t__,int ,TYPE_2__*) ;
 scalar_t__ open (char*,int ) ;
 int vchiq_default_lib_log_level ;
 TYPE_1__ vchiq_instance ;
 int vchiq_lib_log_category ;
 int vcos_global_lock () ;
 int vcos_global_unlock () ;
 int vcos_log_error (char*,...) ;
 int vcos_log_register (char*,int *) ;
 int vcos_log_set_level (int *,int ) ;
 int vcos_mutex_create (int *,char*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static VCHIQ_INSTANCE_T
vchiq_lib_init(const int dev_vchiq_fd)
{
   static int mutex_initialised = 0;
   static VCOS_MUTEX_T vchiq_lib_mutex;
   VCHIQ_INSTANCE_T instance = &vchiq_instance;

   vcos_global_lock();
   if (!mutex_initialised)
   {
      vcos_mutex_create(&vchiq_lib_mutex, "vchiq-init");

      vcos_log_set_level( &vchiq_lib_log_category, vchiq_default_lib_log_level );
      vcos_log_register( "vchiq_lib", &vchiq_lib_log_category );

      mutex_initialised = 1;
   }
   vcos_global_unlock();

   vcos_mutex_lock(&vchiq_lib_mutex);

   if (instance->initialised == 0)
   {
      instance->fd = dev_vchiq_fd == -1 ?
         open("/dev/vchiq", O_RDWR) :
         dup(dev_vchiq_fd);
      if (instance->fd >= 0)
      {
         VCHIQ_GET_CONFIG_T args;
         VCHIQ_CONFIG_T config;
         int ret;
         args.config_size = sizeof(config);
         args.pconfig = &config;
         RETRY(ret, ioctl(instance->fd, VCHIQ_IOC_GET_CONFIG, &args));
         if ((ret == 0) && (config.version >= VCHIQ_VERSION_MIN) && (config.version_min <= VCHIQ_VERSION))
         {
            if (config.version >= VCHIQ_VERSION_LIB_VERSION)
            {
               RETRY(ret, ioctl(instance->fd, VCHIQ_IOC_LIB_VERSION, VCHIQ_VERSION));
            }
            if (ret == 0)
            {
               instance->used_services = 0;
               instance->use_close_delivered = (config.version >= VCHIQ_VERSION_CLOSE_DELIVERED);
               vcos_mutex_create(&instance->mutex, "VCHIQ instance");
               instance->initialised = 1;
            }
         }
         else
         {
            if (ret == 0)
            {
               vcos_log_error("Incompatible VCHIQ library - driver version %d (min %d), library version %d (min %d)",
                  config.version, config.version_min, VCHIQ_VERSION, VCHIQ_VERSION_MIN);
            }
            else
            {
               vcos_log_error("Very incompatible VCHIQ library - cannot retrieve driver version");
            }
            close(instance->fd);
            instance = ((void*)0);
         }
      }
      else
      {
         instance = ((void*)0);
      }
   }
   else if (instance->initialised > 0)
   {
      instance->initialised++;
   }

   vcos_mutex_unlock(&vchiq_lib_mutex);

   return instance;
}
