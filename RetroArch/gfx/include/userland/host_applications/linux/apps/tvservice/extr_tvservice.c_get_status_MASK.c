#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ param1; int /*<<< orphan*/  property; } ;
struct TYPE_8__ {float frame_rate; scalar_t__ scan_mode; scalar_t__ height; scalar_t__ width; } ;
struct TYPE_9__ {TYPE_1__ hdmi; } ;
struct TYPE_10__ {int /*<<< orphan*/  state; TYPE_2__ display; } ;
typedef  TYPE_3__ TV_DISPLAY_STATE_T ;
typedef  TYPE_4__ HDMI_PROPERTY_PARAM_T ;

/* Variables and functions */
 scalar_t__ HDMI_PIXEL_CLOCK_TYPE_NTSC ; 
 int /*<<< orphan*/  HDMI_PROPERTY_PIXEL_CLOCK_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC4( void )
{
   TV_DISPLAY_STATE_T tvstate;
   if( FUNC2( &tvstate ) == 0) {
      //The width/height parameters are in the same position in the union
      //for HDMI and SDTV
      HDMI_PROPERTY_PARAM_T property;
      property.property = HDMI_PROPERTY_PIXEL_CLOCK_TYPE;
      FUNC3(&property);
      float frame_rate = property.param1 == HDMI_PIXEL_CLOCK_TYPE_NTSC ? tvstate.display.hdmi.frame_rate * (1000.0f/1001.0f) : tvstate.display.hdmi.frame_rate;

      if(tvstate.display.hdmi.width && tvstate.display.hdmi.height) {
         FUNC0( "state 0x%x [%s], %ux%u @ %.2fHz, %s", tvstate.state,
                  FUNC1(&tvstate),
                  tvstate.display.hdmi.width, tvstate.display.hdmi.height,
                  frame_rate,
                  tvstate.display.hdmi.scan_mode ? "interlaced" : "progressive" );
      } else {
         FUNC0( "state 0x%x [%s]", tvstate.state, FUNC1(&tvstate));
      }
   } else {
      FUNC0( "Error getting current display state");
   }
  return 0;
}