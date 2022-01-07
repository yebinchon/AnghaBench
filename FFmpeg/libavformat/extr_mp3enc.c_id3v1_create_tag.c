
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int metadata; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int ID3v1_GENRE_MAX ;
 int ID3v1_TAG_SIZE ;
 char atoi (int ) ;
 TYPE_2__* av_dict_get (int ,char*,int *,int ) ;
 int av_strcasecmp (int ,int ) ;
 int * ff_id3v1_genre_str ;
 scalar_t__ id3v1_set_string (TYPE_1__*,char*,char*,int) ;
 int memset (char*,int ,int ) ;

__attribute__((used)) static int id3v1_create_tag(AVFormatContext *s, uint8_t *buf)
{
    AVDictionaryEntry *tag;
    int i, count = 0;

    memset(buf, 0, ID3v1_TAG_SIZE);
    buf[0] = 'T';
    buf[1] = 'A';
    buf[2] = 'G';

    count += id3v1_set_string(s, "TIT2", buf + 3, 30 + 1);
    count += id3v1_set_string(s, "TPE1", buf + 33, 30 + 1);
    count += id3v1_set_string(s, "TALB", buf + 63, 30 + 1);
    count += id3v1_set_string(s, "TDRC", buf + 93, 4 + 1);
    count += id3v1_set_string(s, "comment", buf + 97, 30 + 1);
    if ((tag = av_dict_get(s->metadata, "TRCK", ((void*)0), 0))) {
        buf[125] = 0;
        buf[126] = atoi(tag->value);
        count++;
    }
    buf[127] = 0xFF;
    if ((tag = av_dict_get(s->metadata, "TCON", ((void*)0), 0))) {
        for(i = 0; i <= ID3v1_GENRE_MAX; i++) {
            if (!av_strcasecmp(tag->value, ff_id3v1_genre_str[i])) {
                buf[127] = i;
                count++;
                break;
            }
        }
    }
    return count;
}
