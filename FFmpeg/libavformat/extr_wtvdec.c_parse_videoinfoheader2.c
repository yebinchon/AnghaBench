
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * pb; } ;
typedef TYPE_2__ WtvContext ;
struct TYPE_11__ {TYPE_2__* priv_data; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int codec_tag; } ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int avio_skip (int *,int) ;
 int ff_get_bmp_header (int *,TYPE_3__*,int *) ;

__attribute__((used)) static int parse_videoinfoheader2(AVFormatContext *s, AVStream *st)
{
    WtvContext *wtv = s->priv_data;
    AVIOContext *pb = wtv->pb;

    avio_skip(pb, 72);
    st->codecpar->codec_tag = ff_get_bmp_header(pb, st, ((void*)0));

    return 72 + 40;
}
