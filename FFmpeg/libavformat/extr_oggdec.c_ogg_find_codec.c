
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ogg_codec {int magicsize; int magic; } ;


 int memcmp (int *,int ,int) ;
 struct ogg_codec const** ogg_codecs ;

__attribute__((used)) static const struct ogg_codec *ogg_find_codec(uint8_t *buf, int size)
{
    int i;

    for (i = 0; ogg_codecs[i]; i++)
        if (size >= ogg_codecs[i]->magicsize &&
            !memcmp(buf, ogg_codecs[i]->magic, ogg_codecs[i]->magicsize))
            return ogg_codecs[i];

    return ((void*)0);
}
