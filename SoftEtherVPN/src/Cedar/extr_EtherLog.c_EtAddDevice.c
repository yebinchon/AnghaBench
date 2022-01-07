
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int NoPromiscuous; int LogSetting; int DeviceName; } ;
typedef TYPE_1__ RPC_ADD_DEVICE ;
typedef int EL ;


 int ERR_CAPTURE_DEVICE_ADD_ERROR ;
 int ERR_NO_ERROR ;
 int ElAddCaptureDevice (int *,int ,int *,int ) ;
 int ElSaveConfig (int *) ;

UINT EtAddDevice(EL *e, RPC_ADD_DEVICE *t)
{
 if (ElAddCaptureDevice(e, t->DeviceName, &t->LogSetting, t->NoPromiscuous) == 0)
 {
  return ERR_CAPTURE_DEVICE_ADD_ERROR;
 }

 ElSaveConfig(e);

 return ERR_NO_ERROR;
}
