
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int code; int range; scalar_t__ needFlush; } ;
typedef TYPE_1__ CLzmaDec ;



__attribute__((used)) static void LzmaDec_InitRc(CLzmaDec *p, const uint8_t *data)
{
   p->code = ((uint32_t)data[1] << 24) | ((uint32_t)data[2] << 16) | ((uint32_t)data[3] << 8) | ((uint32_t)data[4]);
   p->range = 0xFFFFFFFF;
   p->needFlush = 0;
}
