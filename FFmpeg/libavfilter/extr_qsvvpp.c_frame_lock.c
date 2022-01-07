
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mfxStatus ;
typedef int mfxMemId ;
typedef int mfxHDL ;
typedef int mfxFrameData ;


 int MFX_ERR_UNSUPPORTED ;

__attribute__((used)) static mfxStatus frame_lock(mfxHDL pthis, mfxMemId mid, mfxFrameData *ptr)
{
    return MFX_ERR_UNSUPPORTED;
}
