
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int (* start ) (int *) ;int * (* init ) () ;int (* stop ) (int *) ;int (* free ) (int *) ;} ;
typedef TYPE_3__ wifi_driver_t ;
struct TYPE_11__ {int wifi_allow; } ;
struct TYPE_10__ {int wifi_driver; } ;
struct TYPE_13__ {TYPE_2__ bools; TYPE_1__ arrays; } ;
typedef TYPE_4__ settings_t ;
typedef enum rarch_wifi_ctl_state { ____Placeholder_rarch_wifi_ctl_state } rarch_wifi_ctl_state ;
struct TYPE_14__ {char* label; scalar_t__ len; int s; } ;
typedef TYPE_5__ driver_ctx_info_t ;
struct TYPE_15__ {int ident; } ;


 int RARCH_DRIVER_CTL_FIND_INDEX ;
 int RARCH_ERR (char*,...) ;
 int RARCH_LOG_OUTPUT (char*,...) ;
 int RARCH_WARN (char*) ;
 TYPE_4__* configuration_settings ;
 int driver_ctl (int ,TYPE_5__*) ;
 int retroarch_fail (int,char*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 int * stub4 () ;
 int verbosity_is_enabled () ;
 int * wifi_data ;
 TYPE_3__ const* wifi_driver ;
 int wifi_driver_active ;
 scalar_t__ wifi_driver_find_handle (unsigned int) ;
 TYPE_6__** wifi_drivers ;

bool wifi_driver_ctl(enum rarch_wifi_ctl_state state, void *data)
{

   switch (state)
   {
      case 136:
         wifi_driver_active = 0;
         wifi_driver = ((void*)0);
         wifi_data = ((void*)0);
         break;
      case 132:
         wifi_driver_active = 1;
         break;
      case 135:
         {
            int i;
            driver_ctx_info_t drv;
            settings_t *settings = configuration_settings;

            drv.label = "wifi_driver";
            drv.s = settings->arrays.wifi_driver;

            driver_ctl(RARCH_DRIVER_CTL_FIND_INDEX, &drv);

            i = (int)drv.len;

            if (i >= 0)
               wifi_driver = (const wifi_driver_t*)wifi_driver_find_handle(i);
            else
            {
               if (verbosity_is_enabled())
               {
                  unsigned d;
                  RARCH_ERR("Couldn't find any wifi driver named \"%s\"\n",
                        settings->arrays.wifi_driver);
                  RARCH_LOG_OUTPUT("Available wifi drivers are:\n");
                  for (d = 0; wifi_driver_find_handle(d); d++)
                     RARCH_LOG_OUTPUT("\t%s\n", wifi_drivers[d]->ident);

                  RARCH_WARN("Going to default to first wifi driver...\n");
               }

               wifi_driver = (const wifi_driver_t*)wifi_driver_find_handle(0);

               if (!wifi_driver)
                  retroarch_fail(1, "find_wifi_driver()");
            }
         }
         break;
      case 128:
         wifi_driver_active = 0;
         break;
      case 133:
        return wifi_driver_active;
      case 137:
        if (wifi_data && wifi_driver)
        {
           if (wifi_driver->free)
              wifi_driver->free(wifi_data);
        }

        wifi_data = ((void*)0);
        break;
      case 129:
        if ( wifi_driver
              && wifi_driver->stop
              && wifi_data)
           wifi_driver->stop(wifi_data);
        break;
      case 130:
        if (wifi_driver && wifi_data && wifi_driver->start)
        {
           settings_t *settings = configuration_settings;
           if (settings->bools.wifi_allow)
              return wifi_driver->start(wifi_data);
        }
        return 0;
      case 131:
        {



        }
        break;
      case 134:

        if (wifi_data)
           return 0;

        wifi_driver_ctl(135, ((void*)0));

        wifi_data = wifi_driver->init();

        if (!wifi_data)
        {
           RARCH_ERR("Failed to initialize wifi driver. Will continue without wifi.\n");
           wifi_driver_ctl(128, ((void*)0));
        }



        break;
      default:
         break;
   }

   return 0;
}
