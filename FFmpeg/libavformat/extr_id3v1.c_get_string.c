
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int str ;
struct TYPE_3__ {int metadata; } ;
typedef TYPE_1__ AVFormatContext ;


 int av_dict_set (int *,char const*,char*,int ) ;

__attribute__((used)) static void get_string(AVFormatContext *s, const char *key,
                       const uint8_t *buf, int buf_size)
{
    int i, c;
    char *q, str[512], *first_free_space = ((void*)0);

    q = str;
    for(i = 0; i < buf_size; i++) {
        c = buf[i];
        if (c == '\0')
            break;
        if ((q - str) >= sizeof(str) - 1)
            break;
        if (c == ' ') {
            if (!first_free_space)
                first_free_space = q;
        } else {
            first_free_space = ((void*)0);
        }
        *q++ = c;
    }
    *q = '\0';

    if (first_free_space)
        *first_free_space = '\0';

    if (*str)
        av_dict_set(&s->metadata, key, str, 0);
}
