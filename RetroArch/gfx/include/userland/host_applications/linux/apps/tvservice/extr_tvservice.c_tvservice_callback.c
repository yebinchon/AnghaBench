
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LOG_INFO (char*,...) ;
__attribute__((used)) static void tvservice_callback( void *callback_data,
                                uint32_t reason,
                                uint32_t param1,
                                uint32_t param2 )
{
   (void)callback_data;
   (void)param1;
   (void)param2;

   switch ( reason )
   {
      case 128:
      {
         LOG_INFO( "HDMI cable is unplugged" );
         break;
      }
      case 135:
      {
         LOG_INFO( "HDMI is attached" );
         break;
      }
      case 134:
      {
         LOG_INFO( "HDMI in DVI mode" );
         break;
      }
      case 129:
      {
         LOG_INFO( "HDMI in HDMI mode" );
         break;
      }
      case 130:
      {
         LOG_INFO( "HDCP authentication is broken" );
         break;
      }
      case 133:
      {
         LOG_INFO( "HDCP is active" );
         break;
      }
      case 132:
      {
         LOG_INFO( "HDCP key download" );
         break;
      }
      case 131:
      {
         LOG_INFO( "HDCP revocation list download" );
         break;
      }
      default:
      {

         LOG_INFO( "Callback with reason %d", reason );
         break;
      }
   }
}
