
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ alloc; scalar_t__ size; int * buf; } ;
struct TYPE_7__ {int height; int flush; TYPE_4__* in_style; int out_style; scalar_t__ style_start; scalar_t__ style_atom_count; TYPE_1__ style_atoms; } ;
typedef TYPE_2__ hb_tx3g_style_context_t ;
struct TYPE_8__ {int current; } ;


 TYPE_2__* calloc (int,int) ;
 TYPE_4__* hb_subtitle_style_init (char const*) ;

hb_tx3g_style_context_t *
hb_tx3g_style_init(int height, const char * ssa_header)
{
    hb_tx3g_style_context_t * ctx;

    ctx = calloc(1, sizeof(*ctx));
    if (ctx == ((void*)0))
    {
        return ((void*)0);
    }
    ctx->in_style = hb_subtitle_style_init(ssa_header);
    ctx->height = height;
    ctx->style_atoms.buf = ((void*)0);
    ctx->style_atoms.size = 0;
    ctx->style_atoms.alloc = 0;
    ctx->style_atom_count = 0;
    ctx->style_start = 0;
    ctx->out_style = ctx->in_style->current;
    ctx->flush = 1;

    return ctx;
}
