
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdbstub_threadinfo {scalar_t__* more_display; scalar_t__* name; scalar_t__* display; } ;
typedef scalar_t__ s32 ;
typedef int lwp_cntrl ;
struct TYPE_2__ {scalar_t__ min_id; scalar_t__ max_id; scalar_t__* local_table; } ;


 TYPE_1__ _lwp_thr_objects ;
 char* hexchars ;
 int strcat (scalar_t__*,char*) ;
 int strcpy (scalar_t__*,char*) ;

s32 gdbstub_getthreadinfo(s32 thread,struct gdbstub_threadinfo *info)
{
 s32 first_id,min_id,max_id;
 lwp_cntrl *th;
 char tmp_buf[20];

 if(thread<=0) return 0;

 if(thread==1) {
  strcpy(info->display,"idle thread");
  strcpy(info->name,"IDLE");
  info->more_display[0] = 0;
  return 1;
 }

 first_id = 1;
 min_id = _lwp_thr_objects.min_id;
 max_id = _lwp_thr_objects.max_id;
 if(thread<=(first_id + (max_id - min_id))){
  th = (lwp_cntrl*)_lwp_thr_objects.local_table[thread - first_id];
  if(th==((void*)0)) return 0;

  strcpy(info->display,"libogc task:   control at: 0x");
  tmp_buf[0] = hexchars[(((int)th)>>28)&0x0f];
  tmp_buf[1] = hexchars[(((int)th)>>24)&0x0f];
  tmp_buf[2] = hexchars[(((int)th)>>20)&0x0f];
  tmp_buf[3] = hexchars[(((int)th)>>16)&0x0f];
  tmp_buf[4] = hexchars[(((int)th)>>12)&0x0f];
  tmp_buf[5] = hexchars[(((int)th)>>8)&0x0f];
  tmp_buf[6] = hexchars[(((int)th)>>4)&0x0f];
  tmp_buf[7] = hexchars[((int)th)&0x0f];
  tmp_buf[8] = 0;
  strcat(info->display,tmp_buf);

  info->name[0] = 0;
  info->name[1] = 0;
  info->name[2] = 0;
  info->name[3] = 0;
  info->name[4] = 0;

  info->more_display[0] = 0;
  return 1;
 }
 return 0;
}
