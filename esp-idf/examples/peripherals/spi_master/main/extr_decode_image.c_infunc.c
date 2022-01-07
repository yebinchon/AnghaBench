
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ device; } ;
struct TYPE_4__ {scalar_t__ inPos; scalar_t__ inData; } ;
typedef TYPE_1__ JpegDev ;
typedef TYPE_2__ JDEC ;


 int memcpy (int *,scalar_t__,int ) ;

__attribute__((used)) static uint16_t infunc(JDEC *decoder, uint8_t *buf, uint16_t len)
{

    JpegDev *jd = (JpegDev *)decoder->device;
    if (buf != ((void*)0)) {
        memcpy(buf, jd->inData + jd->inPos, len);
    }
    jd->inPos += len;
    return len;
}
