
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int pb; int metadata; } ;
typedef TYPE_1__ AVFormatContext ;


 int AV_DICT_DONT_STRDUP_VAL ;
 int av_dict_set (int *,char const*,scalar_t__*,int ) ;
 int av_free (scalar_t__*) ;
 scalar_t__* av_malloc (int) ;
 int avio_read (int ,scalar_t__*,int) ;
 int avio_skip (int ,int) ;

__attribute__((used)) static void get_meta(AVFormatContext *s, const char *key, int size)
{
    uint8_t *str = av_malloc(size+1);

    if (str) {
        int res = avio_read(s->pb, str, size);
        if (res < 0){
            av_free(str);
            return;
        }
        size -= res;
        str[res] = 0;
        av_dict_set(&s->metadata, key, str, AV_DICT_DONT_STRDUP_VAL);
    }

    avio_skip(s->pb, size);
}
