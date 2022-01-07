
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct section {int flags; char* name; } ;
struct TYPE_4__ {int indent_level; scalar_t__ within_tag; scalar_t__ fully_qualified; } ;
typedef TYPE_1__ XMLContext ;
struct TYPE_5__ {size_t level; struct section** section; TYPE_1__* priv; } ;
typedef TYPE_2__ WriterContext ;


 int SECTION_FLAG_HAS_VARIABLE_FIELDS ;
 int XML_INDENT () ;
 int printf (char*,...) ;

__attribute__((used)) static void xml_print_section_footer(WriterContext *wctx)
{
    XMLContext *xml = wctx->priv;
    const struct section *section = wctx->section[wctx->level];

    if (wctx->level == 0) {
        printf("</%sffprobe>\n", xml->fully_qualified ? "ffprobe:" : "");
    } else if (xml->within_tag) {
        xml->within_tag = 0;
        printf("/>\n");
        xml->indent_level--;
    } else if (section->flags & SECTION_FLAG_HAS_VARIABLE_FIELDS) {
        xml->indent_level--;
    } else {
        XML_INDENT(); printf("</%s>\n", section->name);
        xml->indent_level--;
    }
}
