
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int v_scale; } ;
struct TYPE_9__ {TYPE_1__ video; } ;
struct TYPE_8__ {int dy; int dx; } ;
typedef TYPE_1__ PE_Video ;


 TYPE_5__ PE_state ;
 int TRUE ;
 scalar_t__ appleClut8 ;
 TYPE_2__ default_progress ;
 int default_progress_data1x ;
 int default_progress_data2x ;
 int default_progress_data3x ;
 int initialize_screen (TYPE_1__*,int) ;



 int kprintf (char*,int) ;
 int switch_to_old_console (int) ;
 int switch_to_serial_console () ;
 int vc_progress_initialize (TYPE_2__*,int ,int ,int ,unsigned char*) ;
 int vc_progress_initialized ;

int
PE_initialize_console(PE_Video * info, int op)
{
 static int last_console = -1;

 if (info && (info != &PE_state.video)) info->v_scale = PE_state.video.v_scale;

 switch (op) {

 case 130:
  initialize_screen(info, op);
  last_console = switch_to_serial_console();
  kprintf("kPEDisableScreen %d\n", last_console);
  break;

 case 129:
  initialize_screen(info, op);
  if (info)
   PE_state.video = *info;
  kprintf("kPEEnableScreen %d\n", last_console);
  if (last_console != -1)
   switch_to_old_console(last_console);
  break;

 case 128:




  if (!vc_progress_initialized) {
   default_progress.dx = 0;
   default_progress.dy = 0;
   vc_progress_initialize(&default_progress,
            default_progress_data1x,
            default_progress_data2x,
            default_progress_data3x,
            (unsigned char *) appleClut8);
   vc_progress_initialized = TRUE;
  }
  initialize_screen(info, op);
  break;

 default:
  initialize_screen(info, op);
  break;
 }

 return 0;
}
