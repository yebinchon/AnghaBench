
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mfxStatus ;
typedef TYPE_1__* mfxMemId ;
typedef int mfxHDL ;
typedef int mfxFrameData ;
struct TYPE_4__ {int hw_frame; int locked_frame; } ;
typedef TYPE_1__ QSVMid ;


 int MFX_ERR_NONE ;
 int av_frame_free (int *) ;

__attribute__((used)) static mfxStatus qsv_frame_unlock(mfxHDL pthis, mfxMemId mid, mfxFrameData *ptr)
{
    QSVMid *qsv_mid = mid;

    av_frame_free(&qsv_mid->locked_frame);
    av_frame_free(&qsv_mid->hw_frame);

    return MFX_ERR_NONE;
}
