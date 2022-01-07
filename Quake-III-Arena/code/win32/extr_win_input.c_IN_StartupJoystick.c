
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int integer; } ;
struct TYPE_6__ {int dwSize; int wCaps; int wMaxAxes; int wNumAxes; int wMaxButtons; int wNumButtons; int szRegKey; int szOEMVxD; int szPname; int dwFlags; } ;
struct TYPE_7__ {int id; int avail; scalar_t__ oldpovstate; scalar_t__ oldbuttonstate; TYPE_1__ jc; TYPE_1__ ji; } ;
typedef scalar_t__ MMRESULT ;


 int Com_Memset (TYPE_1__*,int ,int) ;
 int Com_Printf (char*,...) ;
 int JOYCAPS_HASPOV ;
 scalar_t__ JOYERR_NOERROR ;
 int JOY_RETURNCENTERED ;
 TYPE_4__* in_joystick ;
 TYPE_3__ joy ;
 scalar_t__ joyGetDevCaps (int,TYPE_1__*,int) ;
 int joyGetNumDevs () ;
 scalar_t__ joyGetPosEx (int,TYPE_1__*) ;
 int qfalse ;
 int qtrue ;

void IN_StartupJoystick (void) {
 int numdevs;
 MMRESULT mmr;


 joy.avail = qfalse;

 if (! in_joystick->integer ) {
  Com_Printf ("Joystick is not active.\n");
  return;
 }


 if ((numdevs = joyGetNumDevs ()) == 0)
 {
  Com_Printf ("joystick not found -- driver not present\n");
  return;
 }


 mmr = 0;
 for (joy.id=0 ; joy.id<numdevs ; joy.id++)
 {
  Com_Memset (&joy.ji, 0, sizeof(joy.ji));
  joy.ji.dwSize = sizeof(joy.ji);
  joy.ji.dwFlags = JOY_RETURNCENTERED;

  if ((mmr = joyGetPosEx (joy.id, &joy.ji)) == JOYERR_NOERROR)
   break;
 }


 if (mmr != JOYERR_NOERROR)
 {
  Com_Printf ("joystick not found -- no valid joysticks (%x)\n", mmr);
  return;
 }



 Com_Memset (&joy.jc, 0, sizeof(joy.jc));
 if ((mmr = joyGetDevCaps (joy.id, &joy.jc, sizeof(joy.jc))) != JOYERR_NOERROR)
 {
  Com_Printf ("joystick not found -- invalid joystick capabilities (%x)\n", mmr);
  return;
 }

 Com_Printf( "Joystick found.\n" );
 Com_Printf( "Pname: %s\n", joy.jc.szPname );
 Com_Printf( "OemVxD: %s\n", joy.jc.szOEMVxD );
 Com_Printf( "RegKey: %s\n", joy.jc.szRegKey );

 Com_Printf( "Numbuttons: %i / %i\n", joy.jc.wNumButtons, joy.jc.wMaxButtons );
 Com_Printf( "Axis: %i / %i\n", joy.jc.wNumAxes, joy.jc.wMaxAxes );
 Com_Printf( "Caps: 0x%x\n", joy.jc.wCaps );
 if ( joy.jc.wCaps & JOYCAPS_HASPOV ) {
  Com_Printf( "HASPOV\n" );
 } else {
  Com_Printf( "no POV\n" );
 }


 joy.oldbuttonstate = 0;
 joy.oldpovstate = 0;


 joy.avail = qtrue;
}
