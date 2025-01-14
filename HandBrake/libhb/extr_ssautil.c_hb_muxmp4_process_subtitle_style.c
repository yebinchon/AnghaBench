
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint16_t ;
struct TYPE_11__ {int* buf; } ;
struct TYPE_12__ {int flush; int style_atom_count; TYPE_1__ style_atoms; TYPE_5__* in_style; } ;
typedef TYPE_2__ hb_tx3g_style_context_t ;
struct TYPE_13__ {char* buf; scalar_t__ size; scalar_t__ alloc; } ;
typedef TYPE_3__ hb_tx3g_output_buf_t ;
struct TYPE_14__ {int event_style_default; } ;


 int check_realloc_output (TYPE_3__*,int) ;
 int free (char*) ;
 char** get_fields (char*,int) ;
 int hb_str_vfree (char**) ;
 int hb_str_vlen (char**) ;
 int hb_tx3g_style_reset (TYPE_2__*) ;
 int memcpy (int*,char*,int) ;
 int ssa_style_reset (TYPE_5__*) ;
 int ssa_style_set (TYPE_5__*,char const*) ;
 char* ssa_to_text (char const*,int*,TYPE_5__*) ;
 int strcpy (char*,char*) ;
 int tx3g_update_style (TYPE_2__*,int) ;

void hb_muxmp4_process_subtitle_style(
    hb_tx3g_style_context_t * ctx,
    uint8_t * input,
    uint8_t ** out_buf,
    uint8_t ** out_style_atoms,
    uint16_t * stylesize)
{
    uint16_t utf8_pos = 0;
    int consumed, in_pos = 0, out_pos = 0, len;
    hb_tx3g_output_buf_t output;
    char * text;
    const char * ssa_text, * style;

    output.buf = ((void*)0);
    output.alloc = 0;
    output.size = 0;
    *out_buf = ((void*)0);
    *out_style_atoms = ((void*)0);
    *stylesize = 0;

    ssa_style_reset(ctx->in_style);


    char ** event = get_fields((char*)input, 9);
    if (hb_str_vlen(event) < 9)
    {

        goto fail;
    }

    style = event[2];
    ssa_text = event[8];
    ctx->in_style->event_style_default = ssa_style_set(ctx->in_style, style);
    hb_tx3g_style_reset(ctx);

    in_pos = 0;

    if (!check_realloc_output(&output, 1))
    {
        goto fail;
    }
    while (ssa_text[in_pos] != '\0')
    {
        text = ssa_to_text(ssa_text + in_pos, &consumed, ctx->in_style);
        if (text == ((void*)0))
            break;


        len = 0;
        int ii, n;
        for (ii = 0; text[ii] != '\0'; ii += n)
        {
            int jj;
            char c = text[ii];

            utf8_pos++;
            if ((c & 0x80) == 0x00) n = 1;
            else if ((c & 0xE0) == 0xC0) n = 2;
            else if ((c & 0xF0) == 0xE0) n = 3;
            else if ((c & 0xF8) == 0xF0) n = 4;
            else n = 1;


            for (jj = 1; jj < n && text[ii + jj] != '\0'; jj++);
            n = jj;
            len += n;
        }
        if (!check_realloc_output(&output, out_pos + len + 1))
        {
            goto fail;
        }
        strcpy((char*)output.buf + out_pos, text);
        free(text);
        out_pos += len;
        in_pos += consumed;
        if (!tx3g_update_style(ctx, utf8_pos))
        {
            goto fail;
        }
    }


    ctx->flush = 1;
    if (!tx3g_update_style(ctx, utf8_pos))
    {
        goto fail;
    }


    output.buf[out_pos] = 0;

    if (ctx->style_atom_count > 0)
    {
        *stylesize = 10 + (ctx->style_atom_count * 12);

        memcpy(ctx->style_atoms.buf + 4, "styl", 4);

        ctx->style_atoms.buf[0] = 0;
        ctx->style_atoms.buf[1] = 0;
        ctx->style_atoms.buf[2] = (*stylesize >> 8) & 0xff;
        ctx->style_atoms.buf[3] = *stylesize & 0xff;
        ctx->style_atoms.buf[8] = (ctx->style_atom_count >> 8) & 0xff;
        ctx->style_atoms.buf[9] = ctx->style_atom_count & 0xff;
        *out_style_atoms = ctx->style_atoms.buf;
    }
    *out_buf = output.buf;
    hb_str_vfree(event);

    return;

fail:
    hb_str_vfree(event);
    free(output.buf);
    free(ctx->style_atoms.buf);
}
