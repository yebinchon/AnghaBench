
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ param1; int property; } ;
struct TYPE_8__ {float frame_rate; scalar_t__ scan_mode; scalar_t__ height; scalar_t__ width; } ;
struct TYPE_9__ {TYPE_1__ hdmi; } ;
struct TYPE_10__ {int state; TYPE_2__ display; } ;
typedef TYPE_3__ TV_DISPLAY_STATE_T ;
typedef TYPE_4__ HDMI_PROPERTY_PARAM_T ;


 scalar_t__ HDMI_PIXEL_CLOCK_TYPE_NTSC ;
 int HDMI_PROPERTY_PIXEL_CLOCK_TYPE ;
 int LOG_STD (char*,...) ;
 int status_mode (TYPE_3__*) ;
 scalar_t__ vc_tv_get_display_state (TYPE_3__*) ;
 int vc_tv_hdmi_get_property (TYPE_4__*) ;

__attribute__((used)) static int get_status( void )
{
   TV_DISPLAY_STATE_T tvstate;
   if( vc_tv_get_display_state( &tvstate ) == 0) {


      HDMI_PROPERTY_PARAM_T property;
      property.property = HDMI_PROPERTY_PIXEL_CLOCK_TYPE;
      vc_tv_hdmi_get_property(&property);
      float frame_rate = property.param1 == HDMI_PIXEL_CLOCK_TYPE_NTSC ? tvstate.display.hdmi.frame_rate * (1000.0f/1001.0f) : tvstate.display.hdmi.frame_rate;

      if(tvstate.display.hdmi.width && tvstate.display.hdmi.height) {
         LOG_STD( "state 0x%x [%s], %ux%u @ %.2fHz, %s", tvstate.state,
                  status_mode(&tvstate),
                  tvstate.display.hdmi.width, tvstate.display.hdmi.height,
                  frame_rate,
                  tvstate.display.hdmi.scan_mode ? "interlaced" : "progressive" );
      } else {
         LOG_STD( "state 0x%x [%s]", tvstate.state, status_mode(&tvstate));
      }
   } else {
      LOG_STD( "Error getting current display state");
   }
  return 0;
}
