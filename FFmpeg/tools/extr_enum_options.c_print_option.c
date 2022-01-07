
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; int type; int flags; char* help; scalar_t__ unit; } ;
typedef TYPE_1__ AVOption ;
typedef int AVClass ;


 int AV_OPT_FLAG_ENCODING_PARAM ;

 scalar_t__ FF_OPT_TYPE_CONST ;







 TYPE_1__* av_next_option (int const**,TYPE_1__ const*) ;
 int printf (char*,...) ;
 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static void print_option(const AVClass *class, const AVOption *o)
{
    printf("@item -%s @var{", o->name);
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

    if (o->flags & AV_OPT_FLAG_ENCODING_PARAM) {
        printf("input");
        if (o->flags & AV_OPT_FLAG_ENCODING_PARAM)
            printf("/");
    }
    if (o->flags & AV_OPT_FLAG_ENCODING_PARAM)
        printf("output");

    printf("})\n");
    if (o->help)
        printf("%s\n", o->help);

    if (o->unit) {
        const AVOption *u = ((void*)0);
        printf("\nPossible values:\n@table @samp\n");

        while ((u = av_next_option(&class, u)))
            if (u->type == FF_OPT_TYPE_CONST && u->unit && !strcmp(u->unit, o->unit))
                printf("@item %s\n%s\n", u->name, u->help ? u->help : "");
        printf("@end table\n");
    }
}
