
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mfxStatus ;
typedef int mfxHDL ;
struct TYPE_3__ {int mids; } ;
typedef TYPE_1__ mfxFrameAllocResponse ;


 int MFX_ERR_NONE ;
 int av_freep (int *) ;

__attribute__((used)) static mfxStatus frame_free(mfxHDL pthis, mfxFrameAllocResponse *resp)
{
    av_freep(&resp->mids);
    return MFX_ERR_NONE;
}
