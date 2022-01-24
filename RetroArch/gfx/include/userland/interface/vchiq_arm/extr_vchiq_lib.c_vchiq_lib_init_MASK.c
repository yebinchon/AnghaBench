#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  config ;
typedef  int /*<<< orphan*/  VCOS_MUTEX_T ;
typedef  TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_9__ {int config_size; TYPE_3__* pconfig; } ;
typedef  TYPE_2__ VCHIQ_GET_CONFIG_T ;
struct TYPE_10__ {scalar_t__ version; TYPE_2__* version_min; } ;
typedef  TYPE_3__ VCHIQ_CONFIG_T ;
struct TYPE_8__ {int initialised; scalar_t__ fd; int use_close_delivered; int /*<<< orphan*/  mutex; scalar_t__ used_services; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_IOC_GET_CONFIG ; 
 int /*<<< orphan*/  VCHIQ_IOC_LIB_VERSION ; 
 TYPE_2__* VCHIQ_VERSION ; 
 scalar_t__ VCHIQ_VERSION_CLOSE_DELIVERED ; 
 scalar_t__ VCHIQ_VERSION_LIB_VERSION ; 
 scalar_t__ VCHIQ_VERSION_MIN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vchiq_default_lib_log_level ; 
 TYPE_1__ vchiq_instance ; 
 int /*<<< orphan*/  vchiq_lib_log_category ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VCHIQ_INSTANCE_T
FUNC13(const int dev_vchiq_fd)
{
   static int mutex_initialised = 0;
   static VCOS_MUTEX_T vchiq_lib_mutex;
   VCHIQ_INSTANCE_T instance = &vchiq_instance;

   FUNC5();
   if (!mutex_initialised)
   {
      FUNC10(&vchiq_lib_mutex, "vchiq-init");

      FUNC9( &vchiq_lib_log_category, vchiq_default_lib_log_level );
      FUNC8( "vchiq_lib", &vchiq_lib_log_category );

      mutex_initialised = 1;
   }
   FUNC6();

   FUNC11(&vchiq_lib_mutex);

   if (instance->initialised == 0)
   {
      instance->fd = dev_vchiq_fd == -1 ?
         FUNC4("/dev/vchiq", O_RDWR) :
         FUNC2(dev_vchiq_fd);
      if (instance->fd >= 0)
      {
         VCHIQ_GET_CONFIG_T args;
         VCHIQ_CONFIG_T config;
         int ret;
         args.config_size = sizeof(config);
         args.pconfig = &config;
         FUNC0(ret, FUNC3(instance->fd, VCHIQ_IOC_GET_CONFIG, &args));
         if ((ret == 0) && (config.version >= VCHIQ_VERSION_MIN) && (config.version_min <= VCHIQ_VERSION))
         {
            if (config.version >= VCHIQ_VERSION_LIB_VERSION)
            {
               FUNC0(ret, FUNC3(instance->fd, VCHIQ_IOC_LIB_VERSION, VCHIQ_VERSION));
            }
            if (ret == 0)
            {
               instance->used_services = 0;
               instance->use_close_delivered = (config.version >= VCHIQ_VERSION_CLOSE_DELIVERED);
               FUNC10(&instance->mutex, "VCHIQ instance");
               instance->initialised = 1;
            }
         }
         else
         {
            if (ret == 0)
            {
               FUNC7("Incompatible VCHIQ library - driver version %d (min %d), library version %d (min %d)",
                  config.version, config.version_min, VCHIQ_VERSION, VCHIQ_VERSION_MIN);
            }
            else
            {
               FUNC7("Very incompatible VCHIQ library - cannot retrieve driver version");
            }
            FUNC1(instance->fd);
            instance = NULL;
         }
      }
      else
      {
         instance = NULL;
      }
   }
   else if (instance->initialised > 0)
   {
      instance->initialised++;
   }

   FUNC12(&vchiq_lib_mutex);

   return instance;
}