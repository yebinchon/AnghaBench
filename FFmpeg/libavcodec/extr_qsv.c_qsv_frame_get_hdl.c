
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mfxStatus ;
typedef scalar_t__ mfxMemId ;
typedef int mfxHDL ;
struct TYPE_2__ {int handle; } ;
typedef TYPE_1__ QSVMid ;


 int MFX_ERR_NONE ;

__attribute__((used)) static mfxStatus qsv_frame_get_hdl(mfxHDL pthis, mfxMemId mid, mfxHDL *hdl)
{
    QSVMid *qsv_mid = (QSVMid*)mid;
    *hdl = qsv_mid->handle;
    return MFX_ERR_NONE;
}
