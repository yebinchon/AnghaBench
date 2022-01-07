
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct js_event {int type; } ;
typedef int name ;
typedef int event ;
struct TYPE_2__ {int integer; } ;


 int Com_Printf (char*,...) ;
 int JSIOCGAXES ;
 int JSIOCGBUTTONS ;
 int JSIOCGNAME (int) ;
 int JS_EVENT_INIT ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int PATH_MAX ;
 TYPE_1__* in_joystick ;
 scalar_t__ ioctl (int,int ,char*) ;
 int joy_fd ;
 int open (char*,int) ;
 int read (int,struct js_event*,int) ;
 int snprintf (char*,int,char*,int) ;
 int strncpy (char*,char*,int) ;

void IN_StartupJoystick( void )
{
  int i = 0;

  joy_fd = -1;

  if( !in_joystick->integer ) {
    Com_Printf( "Joystick is not active.\n" );
    return;
  }

  for( i = 0; i < 4; i++ ) {
    char filename[PATH_MAX];

    snprintf( filename, PATH_MAX, "/dev/js%d", i );

    joy_fd = open( filename, O_RDONLY | O_NONBLOCK );

    if( joy_fd != -1 ) {
      struct js_event event;
      char axes = 0;
      char buttons = 0;
      char name[128];
      int n = -1;

      Com_Printf( "Joystick %s found\n", filename );


      do {
 n = read( joy_fd, &event, sizeof( event ) );

 if( n == -1 ) {
   break;
 }

      } while( ( event.type & JS_EVENT_INIT ) );


      ioctl( joy_fd, JSIOCGAXES, &axes );
      ioctl( joy_fd, JSIOCGBUTTONS, &buttons );

      if( ioctl( joy_fd, JSIOCGNAME( sizeof( name ) ), name ) < 0 ) {
 strncpy( name, "Unknown", sizeof( name ) );
      }

      Com_Printf( "Name:    %s\n", name );
      Com_Printf( "Axes:    %d\n", axes );
      Com_Printf( "Buttons: %d\n", buttons );


      return;
    }

  }


  if( joy_fd == -1 ) {
    Com_Printf( "No joystick found.\n" );
    return;
  }

}
