
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int readorder; } ;
typedef TYPE_1__ TeletextContext ;
struct TYPE_9__ {int str; } ;
typedef TYPE_2__ AVBPrint ;


 int AV_BPRINT_SIZE_UNLIMITED ;
 int av_bprint_finalize (TYPE_2__*,int *) ;
 int av_bprint_init (TYPE_2__*,int ,int ) ;
 int av_bprint_is_complete (TYPE_2__*) ;
 int ff_ass_bprint_text_event (TYPE_2__*,char const*,int ,char*,int ) ;
 char* ff_ass_get_dialog (int ,int ,int *,int *,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static char *create_ass_text(TeletextContext *ctx, const char *text)
{
    char *dialog;
    AVBPrint buf;

    av_bprint_init(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);
    ff_ass_bprint_text_event(&buf, text, strlen(text), "", 0);
    if (!av_bprint_is_complete(&buf)) {
        av_bprint_finalize(&buf, ((void*)0));
        return ((void*)0);
    }
    dialog = ff_ass_get_dialog(ctx->readorder++, 0, ((void*)0), ((void*)0), buf.str);
    av_bprint_finalize(&buf, ((void*)0));
    return dialog;
}
