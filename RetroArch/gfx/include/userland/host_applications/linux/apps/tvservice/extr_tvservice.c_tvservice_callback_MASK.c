#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  VC_HDMI_ATTACHED 135 
#define  VC_HDMI_DVI 134 
#define  VC_HDMI_HDCP_AUTH 133 
#define  VC_HDMI_HDCP_KEY_DOWNLOAD 132 
#define  VC_HDMI_HDCP_SRM_DOWNLOAD 131 
#define  VC_HDMI_HDCP_UNAUTH 130 
#define  VC_HDMI_HDMI 129 
#define  VC_HDMI_UNPLUGGED 128 

__attribute__((used)) static void FUNC1( void *callback_data,
                                uint32_t reason,
                                uint32_t param1,
                                uint32_t param2 )
{
   (void)callback_data;
   (void)param1;
   (void)param2;

   switch ( reason )
   {
      case VC_HDMI_UNPLUGGED:
      {
         FUNC0( "HDMI cable is unplugged" );
         break;
      }
      case VC_HDMI_ATTACHED:
      {
         FUNC0( "HDMI is attached" );
         break;
      }
      case VC_HDMI_DVI:
      {
         FUNC0( "HDMI in DVI mode" );
         break;
      }
      case VC_HDMI_HDMI:
      {
         FUNC0( "HDMI in HDMI mode" );
         break;
      }
      case VC_HDMI_HDCP_UNAUTH:
      {
         FUNC0( "HDCP authentication is broken" );
         break;
      }
      case VC_HDMI_HDCP_AUTH:
      {
         FUNC0( "HDCP is active" );
         break;
      }
      case VC_HDMI_HDCP_KEY_DOWNLOAD:
      {
         FUNC0( "HDCP key download" );
         break;
      }
      case VC_HDMI_HDCP_SRM_DOWNLOAD:
      {
         FUNC0( "HDCP revocation list download" );
         break;
      }
      default:
      {
         // Ignore all other reasons
         FUNC0( "Callback with reason %d", reason );
         break;
      }
   }
}