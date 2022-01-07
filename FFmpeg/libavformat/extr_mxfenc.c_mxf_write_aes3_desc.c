
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int pb; } ;
typedef int AVStream ;
typedef TYPE_1__ AVFormatContext ;


 int mxf_aes3_descriptor_key ;
 int mxf_update_klv_size (int ,int ) ;
 int mxf_write_wav_common (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void mxf_write_aes3_desc(AVFormatContext *s, AVStream *st)
{
    int64_t pos = mxf_write_wav_common(s, st, mxf_aes3_descriptor_key);
    mxf_update_klv_size(s->pb, pos);
}
