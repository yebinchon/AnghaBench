
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {scalar_t__ device; } ;
struct TYPE_7__ {int top; int left; int bottom; int right; } ;
struct TYPE_6__ {unsigned char* outData; int outW; } ;
typedef TYPE_1__ JpegDev ;
typedef TYPE_2__ JRECT ;
typedef TYPE_3__ JDEC ;


 int memcpy (unsigned char*,unsigned char*,int) ;
 int printf (char*,int,int,int,int) ;

__attribute__((used)) static UINT outfunc(JDEC *decoder, void *bitmap, JRECT *rect)
{
    unsigned char *in = (unsigned char *)bitmap;
    unsigned char *out;
    int y;
    printf("Rect %d,%d - %d,%d\n", rect->top, rect->left, rect->bottom, rect->right);
    JpegDev *jd = (JpegDev *)decoder->device;
    for (y = rect->top; y <= rect->bottom; y++) {
        out = jd->outData + ((jd->outW * y) + rect->left) * 3;
        memcpy(out, in, ((rect->right - rect->left) + 1) * 3);
        in += ((rect->right - rect->left) + 1) * 3;
    }
    return 1;
}
