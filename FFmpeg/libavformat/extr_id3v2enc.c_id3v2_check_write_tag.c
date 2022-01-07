
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef enum ID3v2Encoding { ____Placeholder_ID3v2Encoding } ID3v2Encoding ;
struct TYPE_3__ {char* key; int value; } ;
typedef int ID3v2EncContext ;
typedef int AVIOContext ;
typedef TYPE_1__ AVDictionaryEntry ;


 scalar_t__ AV_RB32 (char const*) ;
 int id3v2_put_ttag (int *,int *,int ,int *,scalar_t__,int) ;
 int strlen (char*) ;

__attribute__((used)) static int id3v2_check_write_tag(ID3v2EncContext *id3, AVIOContext *pb, AVDictionaryEntry *t,
                                 const char table[][4], enum ID3v2Encoding enc)
{
    uint32_t tag;
    int i;

    if (t->key[0] != 'T' || strlen(t->key) != 4)
        return -1;
    tag = AV_RB32(t->key);
    for (i = 0; *table[i]; i++)
        if (tag == AV_RB32(table[i]))
            return id3v2_put_ttag(id3, pb, t->value, ((void*)0), tag, enc);
    return -1;
}
