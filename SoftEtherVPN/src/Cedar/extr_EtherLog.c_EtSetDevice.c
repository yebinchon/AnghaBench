
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int LogSetting; int DeviceName; } ;
typedef TYPE_1__ RPC_ADD_DEVICE ;
typedef int EL ;


 int ERR_CAPTURE_NOT_FOUND ;
 int ERR_NO_ERROR ;
 int ElSaveConfig (int *) ;
 int ElSetCaptureDeviceLogSetting (int *,int ,int *) ;

UINT EtSetDevice(EL *e, RPC_ADD_DEVICE *t)
{
 if (ElSetCaptureDeviceLogSetting(e, t->DeviceName, &t->LogSetting) == 0)
 {
  return ERR_CAPTURE_NOT_FOUND;
 }

 ElSaveConfig(e);

 return ERR_NO_ERROR;
}
