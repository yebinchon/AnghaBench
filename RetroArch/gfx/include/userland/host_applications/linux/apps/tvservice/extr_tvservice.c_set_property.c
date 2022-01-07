
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {void* param2; void* param1; int property; } ;
typedef int HDMI_PROPERTY_T ;
typedef TYPE_1__ HDMI_PROPERTY_PARAM_T ;


 int LOG_ERR (char*,int ) ;
 int vc_tv_hdmi_set_property (TYPE_1__*) ;

__attribute__((used)) static int set_property(HDMI_PROPERTY_T prop, uint32_t param1, uint32_t param2)
{
   int ret;
   HDMI_PROPERTY_PARAM_T property;
   property.property = prop;
   property.param1 = param1;
   property.param2 = param2;

   ret = vc_tv_hdmi_set_property(&property);
   if(ret != 0)
   {
      LOG_ERR( "Failed to set property %d", prop);
   }
   return ret;
}
