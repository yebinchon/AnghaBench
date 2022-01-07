
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mfxStatus ;
typedef int mfxHDL ;
struct TYPE_3__ {size_t NumFrameActual; int * mids; } ;
typedef TYPE_1__ mfxFrameAllocResponse ;
typedef int AVBufferRef ;


 int MFX_ERR_NONE ;
 int av_buffer_unref (int **) ;
 int av_freep (int **) ;

__attribute__((used)) static mfxStatus qsv_frame_free(mfxHDL pthis, mfxFrameAllocResponse *resp)
{
    av_buffer_unref((AVBufferRef**)&resp->mids[resp->NumFrameActual]);
    av_buffer_unref((AVBufferRef**)&resp->mids[resp->NumFrameActual + 1]);
    av_freep(&resp->mids);
    return MFX_ERR_NONE;
}
