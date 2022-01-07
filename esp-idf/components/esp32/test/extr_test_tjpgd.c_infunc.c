
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {scalar_t__ device; } ;
struct TYPE_4__ {int inPos; int inData; } ;
typedef TYPE_1__ JpegDev ;
typedef TYPE_2__ JDEC ;
typedef int BYTE ;


 int memcpy (int *,int,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static UINT infunc(JDEC *decoder, BYTE *buf, UINT len)
{
    JpegDev *jd = (JpegDev *)decoder->device;
    printf("Reading %d bytes from pos %d\n", len, jd->inPos);
    if (buf != ((void*)0)) {
        memcpy(buf, jd->inData + jd->inPos, len);
    }
    jd->inPos += len;
    return len;
}
