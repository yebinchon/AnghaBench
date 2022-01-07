
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * pbFormat; int * pUnk; int cbFormat; } ;
typedef TYPE_1__ AM_MEDIA_TYPE ;


 int * CoTaskMemAlloc (int ) ;
 long E_OUTOFMEMORY ;
 long S_OK ;
 int memcpy (int *,int *,int ) ;

long ff_copy_dshow_media_type(AM_MEDIA_TYPE *dst, const AM_MEDIA_TYPE *src)
{
    uint8_t *pbFormat = ((void*)0);

    if (src->cbFormat) {
        pbFormat = CoTaskMemAlloc(src->cbFormat);
        if (!pbFormat)
            return E_OUTOFMEMORY;
        memcpy(pbFormat, src->pbFormat, src->cbFormat);
    }

    *dst = *src;
    dst->pUnk = ((void*)0);
    dst->pbFormat = pbFormat;

    return S_OK;
}
