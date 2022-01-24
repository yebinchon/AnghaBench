#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int (* start ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* init ) () ;int /*<<< orphan*/  (* stop ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ wifi_driver_t ;
struct TYPE_11__ {int /*<<< orphan*/  wifi_allow; } ;
struct TYPE_10__ {int /*<<< orphan*/  wifi_driver; } ;
struct TYPE_13__ {TYPE_2__ bools; TYPE_1__ arrays; } ;
typedef  TYPE_4__ settings_t ;
typedef  enum rarch_wifi_ctl_state { ____Placeholder_rarch_wifi_ctl_state } rarch_wifi_ctl_state ;
struct TYPE_14__ {char* label; scalar_t__ len; int /*<<< orphan*/  s; } ;
typedef  TYPE_5__ driver_ctx_info_t ;
struct TYPE_15__ {int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_DRIVER_CTL_FIND_INDEX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
#define  RARCH_WIFI_CTL_DEINIT 137 
#define  RARCH_WIFI_CTL_DESTROY 136 
#define  RARCH_WIFI_CTL_FIND_DRIVER 135 
#define  RARCH_WIFI_CTL_INIT 134 
#define  RARCH_WIFI_CTL_IS_ACTIVE 133 
#define  RARCH_WIFI_CTL_SET_ACTIVE 132 
#define  RARCH_WIFI_CTL_SET_CB 131 
#define  RARCH_WIFI_CTL_START 130 
#define  RARCH_WIFI_CTL_STOP 129 
#define  RARCH_WIFI_CTL_UNSET_ACTIVE 128 
 TYPE_4__* configuration_settings ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * wifi_data ; 
 TYPE_3__ const* wifi_driver ; 
 int wifi_driver_active ; 
 scalar_t__ FUNC10 (unsigned int) ; 
 TYPE_6__** wifi_drivers ; 

bool FUNC11(enum rarch_wifi_ctl_state state, void *data)
{

   switch (state)
   {
      case RARCH_WIFI_CTL_DESTROY:
         wifi_driver_active   = false;
         wifi_driver          = NULL;
         wifi_data            = NULL;
         break;
      case RARCH_WIFI_CTL_SET_ACTIVE:
         wifi_driver_active = true;
         break;
      case RARCH_WIFI_CTL_FIND_DRIVER:
         {
            int i;
            driver_ctx_info_t drv;
            settings_t *settings = configuration_settings;

            drv.label = "wifi_driver";
            drv.s     = settings->arrays.wifi_driver;

            FUNC3(RARCH_DRIVER_CTL_FIND_INDEX, &drv);

            i = (int)drv.len;

            if (i >= 0)
               wifi_driver = (const wifi_driver_t*)FUNC10(i);
            else
            {
               if (FUNC9())
               {
                  unsigned d;
                  FUNC0("Couldn't find any wifi driver named \"%s\"\n",
                        settings->arrays.wifi_driver);
                  FUNC1("Available wifi drivers are:\n");
                  for (d = 0; FUNC10(d); d++)
                     FUNC1("\t%s\n", wifi_drivers[d]->ident);

                  FUNC2("Going to default to first wifi driver...\n");
               }

               wifi_driver = (const wifi_driver_t*)FUNC10(0);

               if (!wifi_driver)
                  FUNC4(1, "find_wifi_driver()");
            }
         }
         break;
      case RARCH_WIFI_CTL_UNSET_ACTIVE:
         wifi_driver_active = false;
         break;
      case RARCH_WIFI_CTL_IS_ACTIVE:
        return wifi_driver_active;
      case RARCH_WIFI_CTL_DEINIT:
        if (wifi_data && wifi_driver)
        {
           if (wifi_driver->free)
              wifi_driver->free(wifi_data);
        }

        wifi_data = NULL;
        break;
      case RARCH_WIFI_CTL_STOP:
        if (     wifi_driver
              && wifi_driver->stop
              && wifi_data)
           wifi_driver->stop(wifi_data);
        break;
      case RARCH_WIFI_CTL_START:
        if (wifi_driver && wifi_data && wifi_driver->start)
        {
           settings_t *settings = configuration_settings;
           if (settings->bools.wifi_allow)
              return wifi_driver->start(wifi_data);
        }
        return false;
      case RARCH_WIFI_CTL_SET_CB:
        {
           /*struct retro_wifi_callback *cb =
              (struct retro_wifi_callback*)data;
           wifi_cb          = *cb;*/
        }
        break;
      case RARCH_WIFI_CTL_INIT:
        /* Resource leaks will follow if wifi is initialized twice. */
        if (wifi_data)
           return false;

        FUNC11(RARCH_WIFI_CTL_FIND_DRIVER, NULL);

        wifi_data = wifi_driver->init();

        if (!wifi_data)
        {
           FUNC0("Failed to initialize wifi driver. Will continue without wifi.\n");
           FUNC11(RARCH_WIFI_CTL_UNSET_ACTIVE, NULL);
        }

        /*if (wifi_cb.initialized)
           wifi_cb.initialized();*/
        break;
      default:
         break;
   }

   return false;
}