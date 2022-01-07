
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ AV_CODEC_ID_NONE ;
 int FF_COMPLIANCE_NORMAL ;
 TYPE_1__* ff_img_tags ;

__attribute__((used)) static int query_codec(enum AVCodecID id, int std_compliance)
{
    int i;
    for (i = 0; ff_img_tags[i].id != AV_CODEC_ID_NONE; i++)
        if (ff_img_tags[i].id == id)
            return 1;


    return std_compliance < FF_COMPLIANCE_NORMAL;
}
