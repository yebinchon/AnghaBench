
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int value1; int value2; int value4; int value3; } ;
typedef TYPE_1__ kd_regtype ;
struct TYPE_5__ {unsigned int kdebug_flags; } ;


 int EINVAL ;
 int FALSE ;
 scalar_t__ KDBG_CKTYPES ;

 int const KDBG_PIDCHECK ;
 int const KDBG_PIDEXCLUDE ;
 int const KDBG_RANGECHECK ;


 int const KDBG_TYPEFILTER_CHECK ;


 int SLOW_CHECKS ;
 int TRUE ;
 TYPE_3__ kd_ctrl_page ;
 int kdbg_set_flags (int ,int ,int ) ;
 unsigned int kdlog_beg ;
 unsigned int kdlog_end ;
 unsigned int kdlog_value1 ;
 unsigned int kdlog_value2 ;
 int kdlog_value3 ;
 int kdlog_value4 ;

int
kdbg_setreg(kd_regtype * kdr)
{
 int ret=0;
 unsigned int val_1, val_2, val;
 switch (kdr->type) {

 case 132 :
  val_1 = (kdr->value1 & 0xff);
  val_2 = (kdr->value2 & 0xff);
  kdlog_beg = (val_1<<24);
  kdlog_end = (val_2<<24);
  kd_ctrl_page.kdebug_flags &= (unsigned int)~KDBG_CKTYPES;
  kd_ctrl_page.kdebug_flags &= ~128;
  kd_ctrl_page.kdebug_flags |= (KDBG_RANGECHECK | 132);
  kdbg_set_flags(SLOW_CHECKS, 0, TRUE);
  break;
 case 130 :
  val_1 = (kdr->value1 & 0xff);
  val_2 = (kdr->value2 & 0xff);
  val = val_2 + 1;
  kdlog_beg = ((val_1<<24) | (val_2 << 16));
  kdlog_end = ((val_1<<24) | (val << 16));
  kd_ctrl_page.kdebug_flags &= (unsigned int)~KDBG_CKTYPES;
  kd_ctrl_page.kdebug_flags &= ~128;
  kd_ctrl_page.kdebug_flags |= (KDBG_RANGECHECK | 130);
  kdbg_set_flags(SLOW_CHECKS, 0, TRUE);
  break;
 case 131 :
  kdlog_beg = (kdr->value1);
  kdlog_end = (kdr->value2);
  kd_ctrl_page.kdebug_flags &= (unsigned int)~KDBG_CKTYPES;
  kd_ctrl_page.kdebug_flags &= ~128;
  kd_ctrl_page.kdebug_flags |= (KDBG_RANGECHECK | 131);
  kdbg_set_flags(SLOW_CHECKS, 0, TRUE);
  break;
 case 128:
  kdlog_value1 = (kdr->value1);
  kdlog_value2 = (kdr->value2);
  kdlog_value3 = (kdr->value3);
  kdlog_value4 = (kdr->value4);
  kd_ctrl_page.kdebug_flags &= (unsigned int)~KDBG_CKTYPES;
  kd_ctrl_page.kdebug_flags &= ~KDBG_RANGECHECK;
  kd_ctrl_page.kdebug_flags |= 128;
  kdbg_set_flags(SLOW_CHECKS, 0, TRUE);
  break;
 case 129 :
  kd_ctrl_page.kdebug_flags &= (unsigned int)~KDBG_CKTYPES;

  if ( (kd_ctrl_page.kdebug_flags & (KDBG_RANGECHECK | 128 |
         KDBG_PIDCHECK | KDBG_PIDEXCLUDE |
         KDBG_TYPEFILTER_CHECK)) )
   kdbg_set_flags(SLOW_CHECKS, 0, TRUE);
  else
   kdbg_set_flags(SLOW_CHECKS, 0, FALSE);

  kdlog_beg = 0;
  kdlog_end = 0;
  break;
 default :
  ret = EINVAL;
  break;
 }
 return(ret);
}
