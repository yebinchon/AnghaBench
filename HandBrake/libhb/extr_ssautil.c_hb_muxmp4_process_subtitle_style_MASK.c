#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint16_t ;
struct TYPE_11__ {int* buf; } ;
struct TYPE_12__ {int flush; int style_atom_count; TYPE_1__ style_atoms; TYPE_5__* in_style; } ;
typedef  TYPE_2__ hb_tx3g_style_context_t ;
struct TYPE_13__ {char* buf; scalar_t__ size; scalar_t__ alloc; } ;
typedef  TYPE_3__ hb_tx3g_output_buf_t ;
struct TYPE_14__ {int /*<<< orphan*/  event_style_default; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char** FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char const*) ; 
 char* FUNC9 (char const*,int*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 

void FUNC12(
    hb_tx3g_style_context_t      * ctx,
    uint8_t                      * input,
    uint8_t                     ** out_buf,
    uint8_t                     ** out_style_atoms,
    uint16_t                     * stylesize)
{
    uint16_t                       utf8_pos = 0;
    int                            consumed, in_pos = 0, out_pos = 0, len;
    hb_tx3g_output_buf_t           output;
    char                         * text;
    const char                   * ssa_text, * style;

    output.buf       = NULL;
    output.alloc     = 0;
    output.size      = 0;
    *out_buf         = NULL;
    *out_style_atoms = NULL;
    *stylesize       = 0;

    FUNC7(ctx->in_style);

    // Skip past the SSA preamble
    char ** event = FUNC2((char*)input, 9);
    if (FUNC4(event) < 9)
    {
        // Not enough fields
        goto fail;
    }

    style = event[2];
    ssa_text = event[8];
    ctx->in_style->event_style_default = FUNC8(ctx->in_style, style);
    FUNC5(ctx);

    in_pos = 0;
    // Always allocate enough for empty string
    if (!FUNC0(&output, 1))
    {
        goto fail;
    }
    while (ssa_text[in_pos] != '\0')
    {
        text = FUNC9(ssa_text + in_pos, &consumed, ctx->in_style);
        if (text == NULL)
            break;

        // count UTF8 characters, and get length of text
        len = 0;
        int  ii, n;
        for (ii = 0; text[ii] != '\0'; ii += n)
        {
            int  jj;
            char c = text[ii];

            utf8_pos++;
            if      ((c & 0x80) == 0x00) n = 1;
            else if ((c & 0xE0) == 0xC0) n = 2;
            else if ((c & 0xF0) == 0xE0) n = 3;
            else if ((c & 0xF8) == 0xF0) n = 4;
            else                         n = 1; // invalid, but must handle

            // Prevent skipping null terminator
            for (jj = 1; jj < n && text[ii + jj] != '\0'; jj++);
            n = jj;
            len += n;
        }
        if (!FUNC0(&output, out_pos + len + 1))
        {
            goto fail;
        }
        FUNC10((char*)output.buf + out_pos, text);
        FUNC1(text);
        out_pos += len;
        in_pos += consumed;
        if (!FUNC11(ctx, utf8_pos))
        {
            goto fail;
        }
    }
    // Return to default style at end of line, flushes any pending
    // style changes
    ctx->flush = 1;
    if (!FUNC11(ctx, utf8_pos))
    {
        goto fail;
    }

    // null terminate output string
    output.buf[out_pos] = 0;

    if (ctx->style_atom_count > 0)
    {
        *stylesize = 10 + (ctx->style_atom_count * 12);

        FUNC6(ctx->style_atoms.buf + 4, "styl", 4);

        ctx->style_atoms.buf[0] = 0;
        ctx->style_atoms.buf[1] = 0;
        ctx->style_atoms.buf[2] = (*stylesize >> 8) & 0xff;
        ctx->style_atoms.buf[3] = *stylesize & 0xff;
        ctx->style_atoms.buf[8] = (ctx->style_atom_count >> 8) & 0xff;
        ctx->style_atoms.buf[9] = ctx->style_atom_count & 0xff;
        *out_style_atoms = ctx->style_atoms.buf;
    }
    *out_buf = output.buf;
    FUNC3(event);

    return;

fail:
    FUNC3(event);
    FUNC1(output.buf);
    FUNC1(ctx->style_atoms.buf);
}