
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ priv; TYPE_1__* source; } ;
struct TYPE_4__ {int * data; } ;
typedef TYPE_2__ HWMapDescriptor ;
typedef int CVPixelBufferRef ;
typedef int AVHWFramesContext ;


 int CVPixelBufferUnlockBaseAddress (int ,uintptr_t) ;

__attribute__((used)) static void vt_unmap(AVHWFramesContext *ctx, HWMapDescriptor *hwmap)
{
    CVPixelBufferRef pixbuf = (CVPixelBufferRef)hwmap->source->data[3];

    CVPixelBufferUnlockBaseAddress(pixbuf, (uintptr_t)hwmap->priv);
}
