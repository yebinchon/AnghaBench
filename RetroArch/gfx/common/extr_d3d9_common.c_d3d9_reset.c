
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DPRESENT_PARAMETERS ;





 int RARCH_WARN (char*,...) ;
 scalar_t__ d3d9_reset_internal (void*,int *) ;
 int d3d9_test_cooperative_level (void*) ;

bool d3d9_reset(void *dev, void *d3dpp)
{
   const char *err = ((void*)0);

   if (d3d9_reset_internal(dev, (D3DPRESENT_PARAMETERS*)d3dpp))
      return 1;

   RARCH_WARN("[D3D]: Attempting to recover from dead state...\n");



   switch (d3d9_test_cooperative_level(dev))
   {
      case 130:
         err = "DEVICELOST";
         break;

      case 129:
         err = "DEVICENOTRESET";
         break;

      case 128:
         err = "DRIVERINTERNALERROR";
         break;

      default:
         err = "Unknown";
   }
   RARCH_WARN("[D3D]: recovering from dead state: (%s).\n", err);


   return 0;
}
