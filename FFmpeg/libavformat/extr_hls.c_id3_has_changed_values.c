
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct playlist {TYPE_4__* ctx; int * id3_initial; } ;
struct TYPE_15__ {char* key; int value; } ;
struct TYPE_14__ {TYPE_1__* buf; } ;
struct TYPE_13__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_11__ {int size; int data; } ;
struct TYPE_12__ {TYPE_2__ attached_pic; } ;
struct TYPE_10__ {int size; int data; } ;
typedef TYPE_5__ ID3v2ExtraMetaAPIC ;
typedef TYPE_6__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 int AV_DICT_MATCH_CASE ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 TYPE_6__* av_dict_get (int *,char*,TYPE_6__*,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int id3_has_changed_values(struct playlist *pls, AVDictionary *metadata,
                                  ID3v2ExtraMetaAPIC *apic)
{
    AVDictionaryEntry *entry = ((void*)0);
    AVDictionaryEntry *oldentry;

    while ((entry = av_dict_get(metadata, "", entry, AV_DICT_IGNORE_SUFFIX))) {
        oldentry = av_dict_get(pls->id3_initial, entry->key, ((void*)0), AV_DICT_MATCH_CASE);
        if (!oldentry || strcmp(oldentry->value, entry->value) != 0)
            return 1;
    }


    if (apic && (pls->ctx->nb_streams != 2 || !pls->ctx->streams[1]->attached_pic.data))
        return 1;

    if (apic) {
        int size = pls->ctx->streams[1]->attached_pic.size;
        if (size != apic->buf->size - AV_INPUT_BUFFER_PADDING_SIZE)
            return 1;

        if (memcmp(apic->buf->data, pls->ctx->streams[1]->attached_pic.data, size) != 0)
            return 1;
    }

    return 0;
}
