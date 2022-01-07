
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_9__ {char* value; int key; } ;
struct TYPE_8__ {int * pb; int metadata; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int APE_TAG_FLAG_CONTAINS_HEADER ;
 int APE_TAG_FLAG_IS_HEADER ;
 int APE_TAG_FOOTER_BYTES ;
 int APE_TAG_VERSION ;
 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_WARNING ;
 TYPE_2__* av_dict_get (int ,char*,TYPE_2__*,int ) ;
 int av_freep (char**) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int avio_close_dyn_buf (int *,char**) ;
 int avio_open_dyn_buf (int **) ;
 int avio_put_str (int *,int ) ;
 int avio_wl32 (int *,int) ;
 int avio_write (int *,char*,int) ;
 int ff_standardize_creation_time (TYPE_1__*) ;
 int ffio_fill (int *,int ,int) ;
 int string_is_ascii (int ) ;
 int strlen (char*) ;

int ff_ape_write_tag(AVFormatContext *s)
{
    AVDictionaryEntry *e = ((void*)0);
    int size, ret, count = 0;
    AVIOContext *dyn_bc = ((void*)0);
    uint8_t *dyn_buf = ((void*)0);

    if ((ret = avio_open_dyn_buf(&dyn_bc)) < 0)
        goto end;

    ff_standardize_creation_time(s);
    while ((e = av_dict_get(s->metadata, "", e, AV_DICT_IGNORE_SUFFIX))) {
        int val_len;

        if (!string_is_ascii(e->key)) {
            av_log(s, AV_LOG_WARNING, "Non ASCII keys are not allowed\n");
            continue;
        }

        val_len = strlen(e->value);
        avio_wl32(dyn_bc, val_len);
        avio_wl32(dyn_bc, 0);
        avio_put_str(dyn_bc, e->key);
        avio_write(dyn_bc, e->value, val_len);
        count++;
    }
    if (!count)
        goto end;

    size = avio_close_dyn_buf(dyn_bc, &dyn_buf);
    if (size <= 0)
        goto end;
    size += APE_TAG_FOOTER_BYTES;


    avio_write(s->pb, "APETAGEX", 8);
    avio_wl32(s->pb, APE_TAG_VERSION);
    avio_wl32(s->pb, size);
    avio_wl32(s->pb, count);


    avio_wl32(s->pb, APE_TAG_FLAG_CONTAINS_HEADER | APE_TAG_FLAG_IS_HEADER);
    ffio_fill(s->pb, 0, 8);

    avio_write(s->pb, dyn_buf, size - APE_TAG_FOOTER_BYTES);


    avio_write(s->pb, "APETAGEX", 8);
    avio_wl32(s->pb, APE_TAG_VERSION);
    avio_wl32(s->pb, size);
    avio_wl32(s->pb, count);


    avio_wl32(s->pb, APE_TAG_FLAG_CONTAINS_HEADER);
    ffio_fill(s->pb, 0, 8);

end:
    if (dyn_bc && !dyn_buf)
        avio_close_dyn_buf(dyn_bc, &dyn_buf);
    av_freep(&dyn_buf);

    return ret;
}
