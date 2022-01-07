
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; char* name; int type; char* help; scalar_t__ unit; } ;
typedef TYPE_1__ AVOption ;


 int AV_OPT_FLAG_AUDIO_PARAM ;
 int AV_OPT_FLAG_DECODING_PARAM ;
 int AV_OPT_FLAG_ENCODING_PARAM ;
 int AV_OPT_FLAG_SUBTITLE_PARAM ;
 int AV_OPT_FLAG_VIDEO_PARAM ;

 scalar_t__ AV_OPT_TYPE_CONST ;







 int printf (char*,...) ;
 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static void print_option(const AVOption *opts, const AVOption *o, int per_stream)
{
    if (!(o->flags & (AV_OPT_FLAG_DECODING_PARAM | AV_OPT_FLAG_ENCODING_PARAM)))
        return;

    printf("@item -%s%s @var{", o->name, per_stream ? "[:stream_specifier]" : "");
    switch (o->type) {
    case 135: printf("hexadecimal string"); break;
    case 128: printf("string"); break;
    case 131:
    case 130: printf("integer"); break;
    case 132:
    case 134: printf("float"); break;
    case 129: printf("rational number"); break;
    case 133: printf("flags"); break;
    default: printf("value"); break;
    }
    printf("} (@emph{");

    if (o->flags & AV_OPT_FLAG_DECODING_PARAM) {
        printf("input");
        if (o->flags & AV_OPT_FLAG_ENCODING_PARAM)
            printf("/");
    }
    if (o->flags & AV_OPT_FLAG_ENCODING_PARAM) printf("output");
    if (o->flags & AV_OPT_FLAG_AUDIO_PARAM) printf(",audio");
    if (o->flags & AV_OPT_FLAG_VIDEO_PARAM) printf(",video");
    if (o->flags & AV_OPT_FLAG_SUBTITLE_PARAM) printf(",subtitles");

    printf("})\n");
    if (o->help)
        printf("%s\n", o->help);

    if (o->unit) {
        const AVOption *u;
        printf("\nPossible values:\n@table @samp\n");

        for (u = opts; u->name; u++) {
            if (u->type == AV_OPT_TYPE_CONST && u->unit && !strcmp(u->unit, o->unit))
                printf("@item %s\n%s\n", u->name, u->help ? u->help : "");
        }
        printf("@end table\n");
    }
}
