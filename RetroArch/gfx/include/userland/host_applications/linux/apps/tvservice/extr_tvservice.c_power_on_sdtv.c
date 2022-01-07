
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int aspect; } ;
typedef TYPE_1__ SDTV_OPTIONS_T ;
typedef int SDTV_MODE_T ;
typedef int SDTV_ASPECT_T ;


 int LOG_ERR (char*,int ,int ) ;
 int LOG_STD (char*,int ,int ) ;
 int SDTV_MODE_PROGRESSIVE ;
 int memset (TYPE_1__*,int ,int) ;
 int vc_tv_sdtv_power_on (int ,TYPE_1__*) ;

__attribute__((used)) static int power_on_sdtv( SDTV_MODE_T mode,
                              SDTV_ASPECT_T aspect, int sdtv_progressive )
{
   int ret;
   SDTV_OPTIONS_T options;
   memset(&options, 0, sizeof options);
   options.aspect = aspect;
   if (sdtv_progressive)
      mode |= SDTV_MODE_PROGRESSIVE;
   LOG_STD( "Powering on SDTV with explicit settings (mode:%d aspect:%d)",
            mode, aspect );

   ret = vc_tv_sdtv_power_on(mode, &options);
   if ( ret != 0 )
   {
      LOG_ERR( "Failed to power on SDTV with explicit settings (mode:%d aspect:%d)",
               mode, aspect );
   }

   return ret;
}
