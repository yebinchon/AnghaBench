#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_14__ {int line; } ;
typedef  TYPE_2__ hb_work_private_t ;
struct TYPE_13__ {int /*<<< orphan*/  scr_sequence; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; int /*<<< orphan*/  frametype; } ;
struct TYPE_15__ {char* data; int size; TYPE_1__ s; } ;
typedef  TYPE_3__ hb_buffer_t ;
struct TYPE_16__ {int startChar; int endChar; void* textColorRGBA; void* fontSize; void* faceStyleFlags; void* fontID; } ;
typedef  TYPE_4__ StyleRecord ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  HB_FRAME_SUBTITLE ; 
 scalar_t__ FUNC1 (char) ; 
 int MAX_MARKUP_LEN ; 
 char* FUNC2 (int) ; 
 void* FUNC3 () ; 
 void* FUNC4 () ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int SSA_PREAMBLE_LEN ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 TYPE_4__* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__**) ; 
 TYPE_3__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,TYPE_4__*) ; 

__attribute__((used)) static hb_buffer_t *FUNC16(hb_work_private_t *pv, hb_buffer_t *in)
{
    uint8_t *pos = in->data;
    uint8_t *end = in->data + in->size;

    uint16_t numStyleRecords = 0;
    StyleRecord *styleRecords = NULL;

    /*
     * Parse the packet as a TX3G TextSample.
     *
     * Look for a single StyleBox ('styl') and read all contained StyleRecords.
     * Ignore all other box types.
     *
     * NOTE: Buffer overflows on read are not checked.
     */
    uint16_t textLength = FUNC3();
    uint8_t *text = FUNC2(textLength);
    while ( pos < end )
    {
        /*
         * Read TextSampleModifierBox
         */
        uint32_t size = FUNC4();
        if ( size == 0 )
        {
            size = pos - end;   // extends to end of packet
        }
        if ( size == 1 )
        {
            FUNC12( "dectx3gsub: TextSampleModifierBox has unsupported large size" );
            break;
        }
        uint32_t type = FUNC4();
        if (type == FUNC0("uuid"))
        {
            FUNC12( "dectx3gsub: TextSampleModifierBox has unsupported extended type" );
            break;
        }

        if (type == FUNC0("styl"))
        {
            // Found a StyleBox. Parse the contained StyleRecords

            if ( numStyleRecords != 0 )
            {
                FUNC12( "dectx3gsub: found additional StyleBoxes on subtitle; skipping" );
                FUNC6(size);
                continue;
            }

            numStyleRecords = FUNC3();
            if (numStyleRecords > 0)
                styleRecords = FUNC8(numStyleRecords, sizeof(StyleRecord));

            int i;
            for (i = 0; i < numStyleRecords; i++)
            {
                styleRecords[i].startChar         = FUNC3();
                styleRecords[i].endChar           = FUNC3();
                styleRecords[i].fontID            = FUNC3();
                styleRecords[i].faceStyleFlags    = FUNC5();
                styleRecords[i].fontSize          = FUNC5();
                styleRecords[i].textColorRGBA     = FUNC4();
            }
        }
        else
        {
            // Found some other kind of TextSampleModifierBox. Skip it.
            FUNC6(size);
        }
    }

    /*
     * Copy text to output buffer, and add HTML markup for the style records
     */
    int maxOutputSize = textLength + SSA_PREAMBLE_LEN + (numStyleRecords * MAX_MARKUP_LEN);
    hb_buffer_t *out = FUNC11( maxOutputSize );
    if ( out == NULL )
        goto fail;
    uint8_t *dst = out->data;
    uint8_t *start;
    int charIndex = 0;
    int styleIndex = 0;

    FUNC13((char*)dst, "%d,,Default,,0,0,0,,", pv->line);
    dst += FUNC14((char*)dst);
    start = dst;
    for (pos = text, end = text + textLength; pos < end; pos++)
    {
        if (FUNC1(*pos))
        {
            // Is a non-first byte of a multi-byte UTF-8 character
            FUNC7(*pos);
            continue;   // ...without incrementing 'charIndex'
        }

        if (styleIndex < numStyleRecords)
        {
            if (styleRecords[styleIndex].endChar == charIndex)
            {
                if (styleIndex + 1 >= numStyleRecords ||
                    styleRecords[styleIndex+1].startChar > charIndex)
                {
                    dst += FUNC15((char*)dst, NULL);
                }
                styleIndex++;
            }
            if (styleRecords[styleIndex].startChar == charIndex)
            {
                dst += FUNC15((char*)dst, &styleRecords[styleIndex]);
            }
        }

        if (*pos == '\n')
        {
            FUNC7('\\');
            FUNC7('N');
        }
        else
        {
            FUNC7(*pos);
        }
        charIndex++;
    }
    if (start == dst)
    {
        // No text in the subtitle.  This sub is just filler, drop it.
        FUNC9(styleRecords);
        FUNC10(&out);
        return NULL;
    }
    *dst = '\0';
    dst++;

    // Trim output buffer to the actual amount of data written
    out->size = dst - out->data;

    // Copy metadata from the input packet to the output packet
    out->s.frametype    = HB_FRAME_SUBTITLE;
    out->s.start        = in->s.start;
    out->s.stop         = in->s.stop;
    out->s.scr_sequence = in->s.scr_sequence;

fail:
    FUNC9(styleRecords);

    return out;
}