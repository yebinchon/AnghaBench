
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_12__ {int pb; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ codec_id; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 scalar_t__ AV_CODEC_ID_H264 ;
 int mxf_cdci_descriptor_key ;
 int mxf_update_klv_size (int ,int ) ;
 int mxf_write_avc_subdesc (TYPE_3__*,TYPE_2__*) ;
 int mxf_write_cdci_common (TYPE_3__*,TYPE_2__*,int ) ;

__attribute__((used)) static void mxf_write_cdci_desc(AVFormatContext *s, AVStream *st)
{
    int64_t pos = mxf_write_cdci_common(s, st, mxf_cdci_descriptor_key);
    mxf_update_klv_size(s->pb, pos);

    if (st->codecpar->codec_id == AV_CODEC_ID_H264) {
        mxf_write_avc_subdesc(s, st);
    }
}
