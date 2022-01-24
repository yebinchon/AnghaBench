#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct js_event {int type; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  event ;
struct TYPE_2__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  JSIOCGAXES ; 
 int /*<<< orphan*/  JSIOCGBUTTONS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int JS_EVENT_INIT ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int PATH_MAX ; 
 TYPE_1__* in_joystick ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int joy_fd ; 
 int FUNC3 (char*,int) ; 
 int FUNC4 (int,struct js_event*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

void FUNC7( void )
{
  int i = 0;

  joy_fd = -1;

  if( !in_joystick->integer ) {
    FUNC0( "Joystick is not active.\n" );
    return;
  }

  for( i = 0; i < 4; i++ ) {
    char filename[PATH_MAX];

    FUNC5( filename, PATH_MAX, "/dev/js%d", i );

    joy_fd = FUNC3( filename, O_RDONLY | O_NONBLOCK );

    if( joy_fd != -1 ) {
      struct js_event event;
      char axes = 0;
      char buttons = 0;
      char name[128];
      int n = -1;

      FUNC0( "Joystick %s found\n", filename );

      /* Get rid of initialization messages. */
      do {
	n = FUNC4( joy_fd, &event, sizeof( event ) );

	if( n == -1 ) {
	  break;
	}

      } while( ( event.type & JS_EVENT_INIT ) );

      /* Get joystick statistics. */
      FUNC2( joy_fd, JSIOCGAXES, &axes );
      FUNC2( joy_fd, JSIOCGBUTTONS, &buttons );

      if( FUNC2( joy_fd, FUNC1( sizeof( name ) ), name ) < 0 ) {
	FUNC6( name, "Unknown", sizeof( name ) );
      }

      FUNC0( "Name:    %s\n", name );
      FUNC0( "Axes:    %d\n", axes );
      FUNC0( "Buttons: %d\n", buttons );

      /* Our work here is done. */
      return;
    }

  }

  /* No soup for you. */
  if( joy_fd == -1 ) {
    FUNC0( "No joystick found.\n" );
    return;
  }

}