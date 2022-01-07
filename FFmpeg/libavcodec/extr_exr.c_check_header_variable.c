
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int buffer; } ;
struct TYPE_5__ {int avctx; TYPE_3__ gb; } ;
typedef TYPE_1__ EXRContext ;


 int AV_LOG_WARNING ;
 int av_log (int ,int ,char*,char const*,char const*) ;
 int bytestream2_get_bytes_left (TYPE_3__*) ;
 int bytestream2_get_le32 (TYPE_3__*) ;
 int strcmp (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int check_header_variable(EXRContext *s,
                                 const char *value_name,
                                 const char *value_type,
                                 unsigned int minimum_length)
{
    int var_size = -1;

    if (bytestream2_get_bytes_left(&s->gb) >= minimum_length &&
        !strcmp(s->gb.buffer, value_name)) {

        s->gb.buffer += strlen(value_name) + 1;
        if (!strcmp(s->gb.buffer, value_type)) {
            s->gb.buffer += strlen(value_type) + 1;
            var_size = bytestream2_get_le32(&s->gb);

            if (var_size > bytestream2_get_bytes_left(&s->gb))
                var_size = 0;
        } else {

            s->gb.buffer -= strlen(value_name) + 1;
            av_log(s->avctx, AV_LOG_WARNING,
                   "Unknown data type %s for header variable %s.\n",
                   value_type, value_name);
        }
    }

    return var_size;
}
