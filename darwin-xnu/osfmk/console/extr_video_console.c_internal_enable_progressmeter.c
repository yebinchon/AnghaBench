
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_t ;
typedef void* boolean_t ;


 void* FALSE ;
 int IORecordProgressBackbuffer (void*,int,int ) ;
 void* TRUE ;
 int gc_acquired ;
 scalar_t__ gc_enabled ;
 int gc_graphics_boot ;
 int kDataAlpha ;
 int kDataBack ;
 int kProgressBarHeight ;
 int kProgressBarWidth ;
 int kProgressMeterKernel ;
 int kProgressMeterOff ;
 int kProgressMeterUser ;
 int kSave ;
 void* kalloc (int) ;
 int kfree (void*,int) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int splhigh () ;
 int splx (int ) ;
 int vc_draw_progress_meter (int,int ,int,scalar_t__) ;
 int vc_progress_lock ;
 int vc_progress_white ;
 void* vc_progressmeter_backbuffer ;
 scalar_t__ vc_progressmeter_drawn ;
 int vc_progressmeter_enable ;
 int vc_uiscale ;

__attribute__((used)) static void
internal_enable_progressmeter(int new_value)
{
    spl_t s;
    void * new_buffer;
    boolean_t stashBackbuffer;

    stashBackbuffer = FALSE;
    new_buffer = ((void*)0);
    if (new_value)
    {
 new_buffer = kalloc((kProgressBarWidth * vc_uiscale)
              * (kProgressBarHeight * vc_uiscale) * sizeof(int));
    }

    s = splhigh();
    simple_lock(&vc_progress_lock);

    if (kProgressMeterUser == new_value)
    {
 if (gc_enabled || !gc_acquired || !gc_graphics_boot
  || (kProgressMeterKernel == vc_progressmeter_enable)) new_value = vc_progressmeter_enable;
    }

    if (new_value != vc_progressmeter_enable)
    {
 if (new_value)
 {
     if (kProgressMeterOff == vc_progressmeter_enable)
     {
  vc_progressmeter_backbuffer = new_buffer;
  vc_draw_progress_meter(kDataAlpha | kSave, 0, (kProgressBarWidth * vc_uiscale), 0);
  new_buffer = ((void*)0);
  vc_progressmeter_drawn = 0;
     }
     vc_progressmeter_enable = new_value;
 }
 else if (vc_progressmeter_backbuffer)
 {
     if (kProgressMeterUser == vc_progressmeter_enable)
     {
  vc_draw_progress_meter(kDataBack, 0, (kProgressBarWidth * vc_uiscale), vc_progressmeter_drawn);
     }
     else stashBackbuffer = TRUE;
     new_buffer = vc_progressmeter_backbuffer;
     vc_progressmeter_backbuffer = ((void*)0);
     vc_progressmeter_enable = FALSE;
 }
    }

    simple_unlock(&vc_progress_lock);
    splx(s);

    if (new_buffer)
    {
 if (stashBackbuffer) IORecordProgressBackbuffer(new_buffer,
                                       (kProgressBarWidth * vc_uiscale)
                                       * (kProgressBarHeight * vc_uiscale)
                                       * sizeof(int),
                                       vc_progress_white);
 kfree(new_buffer, (kProgressBarWidth * vc_uiscale)
   * (kProgressBarHeight * vc_uiscale) * sizeof(int));
    }
}
