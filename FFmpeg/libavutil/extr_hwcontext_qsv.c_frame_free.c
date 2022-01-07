
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mfxStatus ;
typedef int mfxHDL ;
typedef int mfxFrameAllocResponse ;


 int MFX_ERR_NONE ;

__attribute__((used)) static mfxStatus frame_free(mfxHDL pthis, mfxFrameAllocResponse *resp)
{
    return MFX_ERR_NONE;
}
