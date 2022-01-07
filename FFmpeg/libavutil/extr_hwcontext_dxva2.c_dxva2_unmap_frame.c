
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int priv; TYPE_1__* source; } ;
struct TYPE_4__ {scalar_t__* data; } ;
typedef int IDirect3DSurface9 ;
typedef TYPE_2__ HWMapDescriptor ;
typedef int AVHWFramesContext ;


 int IDirect3DSurface9_UnlockRect (int *) ;
 int av_freep (int *) ;

__attribute__((used)) static void dxva2_unmap_frame(AVHWFramesContext *ctx, HWMapDescriptor *hwmap)
{
    IDirect3DSurface9 *surface = (IDirect3DSurface9*)hwmap->source->data[3];
    IDirect3DSurface9_UnlockRect(surface);
    av_freep(&hwmap->priv);
}
