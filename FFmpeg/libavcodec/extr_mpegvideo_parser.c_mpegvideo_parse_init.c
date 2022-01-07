
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pict_type; } ;
typedef TYPE_1__ AVCodecParserContext ;


 int AV_PICTURE_TYPE_NONE ;

__attribute__((used)) static int mpegvideo_parse_init(AVCodecParserContext *s)
{
    s->pict_type = AV_PICTURE_TYPE_NONE;
    return 0;
}
