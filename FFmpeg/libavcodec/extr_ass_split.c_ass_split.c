
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int section; } ;
struct TYPE_6__ {int current_section; } ;
typedef TYPE_1__ ASSSplitContext ;


 int AVERROR_INVALIDDATA ;
 int FF_ARRAY_ELEMS (TYPE_4__*) ;
 TYPE_4__* ass_sections ;
 char* ass_split_section (TYPE_1__*,char const*) ;
 int sscanf (char const*,char*,char*,char*) ;
 int strcmp (char*,int ) ;
 int strcspn (char const*,char*) ;

__attribute__((used)) static int ass_split(ASSSplitContext *ctx, const char *buf)
{
    char c, section[16];
    int i;

    if (ctx->current_section >= 0)
        buf = ass_split_section(ctx, buf);

    while (buf && *buf) {
        if (sscanf(buf, "[%15[0-9A-Za-z+ ]]%c", section, &c) == 2) {
            buf += strcspn(buf, "\n");
            buf += !!*buf;
            for (i=0; i<FF_ARRAY_ELEMS(ass_sections); i++)
                if (!strcmp(section, ass_sections[i].section)) {
                    ctx->current_section = i;
                    buf = ass_split_section(ctx, buf);
                }
        } else {
            buf += strcspn(buf, "\n");
            buf += !!*buf;
        }
    }
    return buf ? 0 : AVERROR_INVALIDDATA;
}
