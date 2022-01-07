
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* key; int value; } ;
struct TYPE_7__ {char* native; char* generic; } ;
typedef TYPE_1__ AVMetadataConv ;
typedef TYPE_2__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 int av_dict_free (int **) ;
 TYPE_2__* av_dict_get (int *,char*,TYPE_2__*,int ) ;
 int av_dict_set (int **,char const*,int ,int ) ;
 int av_strcasecmp (char const*,char*) ;

void ff_metadata_conv(AVDictionary **pm, const AVMetadataConv *d_conv,
                                       const AVMetadataConv *s_conv)
{


    const AVMetadataConv *sc, *dc;
    AVDictionaryEntry *mtag = ((void*)0);
    AVDictionary *dst = ((void*)0);
    const char *key;

    if (d_conv == s_conv || !pm)
        return;

    while ((mtag = av_dict_get(*pm, "", mtag, AV_DICT_IGNORE_SUFFIX))) {
        key = mtag->key;
        if (s_conv)
            for (sc=s_conv; sc->native; sc++)
                if (!av_strcasecmp(key, sc->native)) {
                    key = sc->generic;
                    break;
                }
        if (d_conv)
            for (dc=d_conv; dc->native; dc++)
                if (!av_strcasecmp(key, dc->generic)) {
                    key = dc->native;
                    break;
                }
        av_dict_set(&dst, key, mtag->value, 0);
    }
    av_dict_free(pm);
    *pm = dst;
}
