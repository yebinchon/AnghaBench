
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {int timeDemoStart; double timeDemoFrames; } ;


 int CL_Disconnect (int ) ;
 int CL_NextDemo () ;
 int Com_Printf (char*,double,int,double) ;
 int Sys_Milliseconds () ;
 TYPE_2__* cl_timedemo ;
 TYPE_1__ clc ;
 int qtrue ;

void CL_DemoCompleted( void ) {
 if (cl_timedemo && cl_timedemo->integer) {
  int time;

  time = Sys_Milliseconds() - clc.timeDemoStart;
  if ( time > 0 ) {
   Com_Printf ("%i frames, %3.1f seconds: %3.1f fps\n", clc.timeDemoFrames,
   time/1000.0, clc.timeDemoFrames*1000.0 / time);
  }
 }

 CL_Disconnect( qtrue );
 CL_NextDemo();
}
