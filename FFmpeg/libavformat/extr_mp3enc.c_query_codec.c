
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_3__ {scalar_t__ id; } ;
typedef TYPE_1__ CodecMime ;


 scalar_t__ AV_CODEC_ID_NONE ;
 int MKTAG (char,char,char,char) ;
 TYPE_1__* ff_id3v2_mime_tags ;

__attribute__((used)) static int query_codec(enum AVCodecID id, int std_compliance)
{
    const CodecMime *cm= ff_id3v2_mime_tags;
    while(cm->id != AV_CODEC_ID_NONE) {
        if(id == cm->id)
            return MKTAG('A', 'P', 'I', 'C');
        cm++;
    }
    return -1;
}
