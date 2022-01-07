
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
struct TYPE_4__ {int state; int cmd; int offset; } ;


 scalar_t__ DVD_ERROR (int) ;
 scalar_t__ DVD_ERROR_UNRECOVERABLE_READ ;
 int DVD_LowSeek (int ,int ) ;
 int DVD_LowSpinUpDrive (int ) ;
 scalar_t__ DVD_STATUS (int) ;
 scalar_t__ DVD_STATUS_COVER_OPENED ;
 scalar_t__ DVD_STATUS_DISK_CHANGE ;
 scalar_t__ DVD_STATUS_NO_DISK ;
 int FALSE ;
 int __dvd_categorizeerror (int) ;
 scalar_t__ __dvd_checkcancel (int) ;
 TYPE_1__* __dvd_executing ;
 int __dvd_extensionsenabled ;
 scalar_t__ __dvd_lasterror ;
 int __dvd_laststate (TYPE_1__*) ;
 int __dvd_statebusy (TYPE_1__*) ;
 int __dvd_statecoverclosed () ;
 int __dvd_stateerror (int) ;
 int __dvd_stategotoretry () ;
 int __dvd_statemotorstopped () ;
 int __dvd_stateretrycb ;
 int __dvd_statetimeout () ;
 int __dvd_storeerror (int) ;
 int __dvd_unrecoverederrorcb ;
 int* _diReg ;
 scalar_t__ dvd_may_retry (int) ;

__attribute__((used)) static void __dvd_stategettingerrorcb(s32 result)
{
 s32 ret;
 u32 val,cnclpt;
 if(result==0x0010) {
  __dvd_executing->state = -1;
  __dvd_statetimeout();
  return;
 }
 if(result&0x0002) {
  __dvd_executing->state = -1;
  __dvd_stateerror(0x01234567);
  return;
 }
 if(result==0x0001) {
  val = _diReg[8];
  ret = __dvd_categorizeerror(val);
  if(ret==1) {
   __dvd_executing->state = -1;
   __dvd_stateerror(val);
   return;
  } else if(ret==2 || ret==3) cnclpt = 0;
  else {
   if(DVD_STATUS(val)==DVD_STATUS_COVER_OPENED) cnclpt = 4;
   else if(DVD_STATUS(val)==DVD_STATUS_DISK_CHANGE) cnclpt = 6;
   else if(DVD_STATUS(val)==DVD_STATUS_NO_DISK) cnclpt = 3;
   else cnclpt = 5;
  }
  if(__dvd_checkcancel(cnclpt)) return;

  if(ret==2) {
   if(dvd_may_retry(val)) {

    if(__dvd_executing->cmd==0x05) {
     __dvd_lasterror = 0;
     __dvd_extensionsenabled = FALSE;
     DVD_LowSpinUpDrive(__dvd_stateretrycb);
     return;
    }
    __dvd_statebusy(__dvd_executing);
   } else {
    __dvd_storeerror(val);
    __dvd_stategotoretry();
   }
   return;
  } else if(ret==3) {
   if(DVD_ERROR(val)==DVD_ERROR_UNRECOVERABLE_READ) {
    DVD_LowSeek(__dvd_executing->offset,__dvd_unrecoverederrorcb);
    return;
   } else {
    __dvd_laststate(__dvd_executing);
    return;
   }
  } else if(DVD_STATUS(val)==DVD_STATUS_COVER_OPENED) {
   __dvd_executing->state = 5;
   __dvd_statemotorstopped();
   return;
  } else if(DVD_STATUS(val)==DVD_STATUS_DISK_CHANGE) {
   __dvd_executing->state = 3;
   __dvd_statecoverclosed();
   return;
  } else if(DVD_STATUS(val)==DVD_STATUS_NO_DISK) {
   __dvd_executing->state = 4;
   __dvd_statemotorstopped();
   return;
  }
  __dvd_executing->state = -1;
  __dvd_stateerror(0x01234567);
  return;
 }
}
