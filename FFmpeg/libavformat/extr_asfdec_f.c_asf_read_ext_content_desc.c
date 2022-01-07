
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int name ;
typedef int int64_t ;
struct TYPE_8__ {TYPE_1__* dar; } ;
struct TYPE_7__ {int * pb; TYPE_3__* priv_data; } ;
struct TYPE_6__ {void* den; void* num; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ ASFContext ;


 int avio_get_str16le (int *,int,char*,int) ;
 int avio_rl16 (int *) ;
 int avio_skip (int *,int) ;
 int get_tag (TYPE_2__*,char*,int,int,int) ;
 void* get_value (int *,int,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int asf_read_ext_content_desc(AVFormatContext *s, int64_t size)
{
    AVIOContext *pb = s->pb;
    ASFContext *asf = s->priv_data;
    int desc_count, i, ret;

    desc_count = avio_rl16(pb);
    for (i = 0; i < desc_count; i++) {
        int name_len, value_type, value_len;
        char name[1024];

        name_len = avio_rl16(pb);
        if (name_len % 2)
            name_len += 1;
        if ((ret = avio_get_str16le(pb, name_len, name, sizeof(name))) < name_len)
            avio_skip(pb, name_len - ret);
        value_type = avio_rl16(pb);
        value_len = avio_rl16(pb);
        if (!value_type && value_len % 2)
            value_len += 1;



        if (!strcmp(name, "AspectRatioX"))
            asf->dar[0].num = get_value(s->pb, value_type, 32);
        else if (!strcmp(name, "AspectRatioY"))
            asf->dar[0].den = get_value(s->pb, value_type, 32);
        else
            get_tag(s, name, value_type, value_len, 32);
    }

    return 0;
}
