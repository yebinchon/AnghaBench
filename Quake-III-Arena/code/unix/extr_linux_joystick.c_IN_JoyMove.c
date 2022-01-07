
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct js_event {int type; int number; int value; } ;
typedef int event ;
struct TYPE_2__ {float value; } ;


 int Com_Printf (char*) ;
 int JS_EVENT_AXIS ;
 int JS_EVENT_BUTTON ;
 scalar_t__ K_JOY1 ;
 int SE_KEY ;
 int Sys_QueEvent (int ,int ,scalar_t__,int,int ,int *) ;
 int joy_fd ;
 scalar_t__* joy_keys ;
 TYPE_1__* joy_threshold ;
 int qfalse ;
 int qtrue ;
 int read (int,struct js_event*,int) ;

void IN_JoyMove( void )
{



  static int axes_state[16];

  static unsigned int old_axes = 0;

  unsigned int axes = 0;
  int i = 0;

  if( joy_fd == -1 ) {
    return;
  }




  do {
    int n = -1;
    struct js_event event;

    n = read( joy_fd, &event, sizeof( event ) );

    if( n == -1 ) {

      break;
    }

    if( event.type & JS_EVENT_BUTTON ) {
      Sys_QueEvent( 0, SE_KEY, K_JOY1 + event.number, event.value, 0, ((void*)0) );
    } else if( event.type & JS_EVENT_AXIS ) {

      if( event.number >= 16 ) {
 continue;
      }

      axes_state[event.number] = event.value;
    } else {
      Com_Printf( "Unknown joystick event type\n" );
    }

  } while( 1 );



  for( i = 0; i < 16; i++ ) {
    float f = ( (float) axes_state[i] ) / 32767.0f;

    if( f < -joy_threshold->value ) {
      axes |= ( 1 << ( i * 2 ) );
    } else if( f > joy_threshold->value ) {
      axes |= ( 1 << ( ( i * 2 ) + 1 ) );
    }

  }


  for( i = 0; i < 16; i++ ) {

    if( ( axes & ( 1 << i ) ) && !( old_axes & ( 1 << i ) ) ) {
      Sys_QueEvent( 0, SE_KEY, joy_keys[i], qtrue, 0, ((void*)0) );
    }

    if( !( axes & ( 1 << i ) ) && ( old_axes & ( 1 << i ) ) ) {
      Sys_QueEvent( 0, SE_KEY, joy_keys[i], qfalse, 0, ((void*)0) );
    }
  }


  old_axes = axes;
}
