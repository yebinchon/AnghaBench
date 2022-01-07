
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct section {scalar_t__ id; } ;
struct TYPE_5__ {int level; scalar_t__* nb_item; struct section** section; TYPE_2__* priv; } ;
typedef TYPE_1__ WriterContext ;
struct TYPE_6__ {char* item_sep; int compact; } ;
typedef TYPE_2__ JSONContext ;
typedef int AVBPrint ;


 int AV_BPRINT_SIZE_UNLIMITED ;
 int JSON_INDENT () ;
 scalar_t__ SECTION_ID_PACKETS_AND_FRAMES ;
 int av_bprint_finalize (int *,int *) ;
 int av_bprint_init (int *,int,int ) ;
 char* json_escape_str (int *,char const*,TYPE_1__*) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static void json_print_int(WriterContext *wctx, const char *key, long long int value)
{
    JSONContext *json = wctx->priv;
    const struct section *parent_section = wctx->level ?
        wctx->section[wctx->level-1] : ((void*)0);
    AVBPrint buf;

    if (wctx->nb_item[wctx->level] || (parent_section && parent_section->id == SECTION_ID_PACKETS_AND_FRAMES))
        printf("%s", json->item_sep);
    if (!json->compact)
        JSON_INDENT();

    av_bprint_init(&buf, 1, AV_BPRINT_SIZE_UNLIMITED);
    printf("\"%s\": %lld", json_escape_str(&buf, key, wctx), value);
    av_bprint_finalize(&buf, ((void*)0));
}
