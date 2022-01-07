
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int DeviceName; } ;
typedef TYPE_1__ RPC_DELETE_DEVICE ;
typedef int EL ;


 int ERR_CAPTURE_NOT_FOUND ;
 int ERR_NO_ERROR ;
 int ElDeleteCaptureDevice (int *,int ) ;
 int ElSaveConfig (int *) ;

UINT EtDelDevice(EL *e, RPC_DELETE_DEVICE *t)
{
 if (ElDeleteCaptureDevice(e, t->DeviceName) == 0)
 {
  return ERR_CAPTURE_NOT_FOUND;
 }

 ElSaveConfig(e);

 return ERR_NO_ERROR;
}
