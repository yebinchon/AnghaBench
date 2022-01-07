
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* tag; struct TYPE_7__* next; TYPE_1__* data; } ;
struct TYPE_6__ {int meta; void* end; void* start; int element_id; } ;
typedef TYPE_1__ ID3v2ExtraMetaCHAP ;
typedef TYPE_2__ ID3v2ExtraMeta ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int av_freep (TYPE_2__**) ;
 void* av_mallocz (int) ;
 void* avio_rb32 (int *) ;
 int avio_read (int *,char*,int) ;
 int avio_skip (int *,int) ;
 scalar_t__ decode_str (int *,int *,int ,int *,int*) ;
 int ff_id3v2_34_metadata_conv ;
 int ff_id3v2_4_metadata_conv ;
 int ff_metadata_conv (int *,int *,int ) ;
 int free_chapter (TYPE_1__*) ;
 int read_ttag (int *,int *,int,int *,char*) ;

__attribute__((used)) static void read_chapter(AVFormatContext *s, AVIOContext *pb, int len, const char *ttag, ID3v2ExtraMeta **extra_meta, int isv34)
{
    int taglen;
    char tag[5];
    ID3v2ExtraMeta *new_extra = ((void*)0);
    ID3v2ExtraMetaCHAP *chap = ((void*)0);

    new_extra = av_mallocz(sizeof(*new_extra));
    chap = av_mallocz(sizeof(*chap));

    if (!new_extra || !chap)
        goto fail;

    if (decode_str(s, pb, 0, &chap->element_id, &len) < 0)
        goto fail;

    if (len < 16)
        goto fail;

    chap->start = avio_rb32(pb);
    chap->end = avio_rb32(pb);
    avio_skip(pb, 8);

    len -= 16;
    while (len > 10) {
        if (avio_read(pb, tag, 4) < 4)
            goto fail;
        tag[4] = 0;
        taglen = avio_rb32(pb);
        avio_skip(pb, 2);
        len -= 10;
        if (taglen < 0 || taglen > len)
            goto fail;
        if (tag[0] == 'T')
            read_ttag(s, pb, taglen, &chap->meta, tag);
        else
            avio_skip(pb, taglen);
        len -= taglen;
    }

    ff_metadata_conv(&chap->meta, ((void*)0), ff_id3v2_34_metadata_conv);
    ff_metadata_conv(&chap->meta, ((void*)0), ff_id3v2_4_metadata_conv);

    new_extra->tag = "CHAP";
    new_extra->data = chap;
    new_extra->next = *extra_meta;
    *extra_meta = new_extra;

    return;

fail:
    if (chap)
        free_chapter(chap);
    av_freep(&new_extra);
}
