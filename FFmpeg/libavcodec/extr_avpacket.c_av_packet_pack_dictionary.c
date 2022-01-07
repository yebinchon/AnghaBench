
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 size_t const INT_MAX ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int av_freep (int **) ;
 int * av_realloc (int *,size_t const) ;
 int memcpy (int *,int ,size_t const) ;
 size_t strlen (int ) ;

uint8_t *av_packet_pack_dictionary(AVDictionary *dict, int *size)
{
    AVDictionaryEntry *t = ((void*)0);
    uint8_t *data = ((void*)0);
    *size = 0;

    if (!dict)
        return ((void*)0);

    while ((t = av_dict_get(dict, "", t, AV_DICT_IGNORE_SUFFIX))) {
        const size_t keylen = strlen(t->key);
        const size_t valuelen = strlen(t->value);
        const size_t new_size = *size + keylen + 1 + valuelen + 1;
        uint8_t *const new_data = av_realloc(data, new_size);

        if (!new_data)
            goto fail;
        data = new_data;
        if (new_size > INT_MAX)
            goto fail;

        memcpy(data + *size, t->key, keylen + 1);
        memcpy(data + *size + keylen + 1, t->value, valuelen + 1);

        *size = new_size;
    }

    return data;

fail:
    av_freep(&data);
    *size = 0;
    return ((void*)0);
}
