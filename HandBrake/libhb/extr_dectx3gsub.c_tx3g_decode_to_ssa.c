
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_14__ {int line; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_13__ {int scr_sequence; int stop; int start; int frametype; } ;
struct TYPE_15__ {char* data; int size; TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;
struct TYPE_16__ {int startChar; int endChar; void* textColorRGBA; void* fontSize; void* faceStyleFlags; void* fontID; } ;
typedef TYPE_4__ StyleRecord ;


 int FOURCC (char*) ;
 int HB_FRAME_SUBTITLE ;
 scalar_t__ IS_10xxxxxx (char) ;
 int MAX_MARKUP_LEN ;
 char* READ_ARRAY (int) ;
 void* READ_U16 () ;
 void* READ_U32 () ;
 void* READ_U8 () ;
 int SKIP_ARRAY (int) ;
 int SSA_PREAMBLE_LEN ;
 int WRITE_CHAR (char) ;
 TYPE_4__* calloc (int,int) ;
 int free (TYPE_4__*) ;
 int hb_buffer_close (TYPE_3__**) ;
 TYPE_3__* hb_buffer_init (int) ;
 int hb_log (char*) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int write_ssa_markup (char*,TYPE_4__*) ;

__attribute__((used)) static hb_buffer_t *tx3g_decode_to_ssa(hb_work_private_t *pv, hb_buffer_t *in)
{
    uint8_t *pos = in->data;
    uint8_t *end = in->data + in->size;

    uint16_t numStyleRecords = 0;
    StyleRecord *styleRecords = ((void*)0);
    uint16_t textLength = READ_U16();
    uint8_t *text = READ_ARRAY(textLength);
    while ( pos < end )
    {



        uint32_t size = READ_U32();
        if ( size == 0 )
        {
            size = pos - end;
        }
        if ( size == 1 )
        {
            hb_log( "dectx3gsub: TextSampleModifierBox has unsupported large size" );
            break;
        }
        uint32_t type = READ_U32();
        if (type == FOURCC("uuid"))
        {
            hb_log( "dectx3gsub: TextSampleModifierBox has unsupported extended type" );
            break;
        }

        if (type == FOURCC("styl"))
        {


            if ( numStyleRecords != 0 )
            {
                hb_log( "dectx3gsub: found additional StyleBoxes on subtitle; skipping" );
                SKIP_ARRAY(size);
                continue;
            }

            numStyleRecords = READ_U16();
            if (numStyleRecords > 0)
                styleRecords = calloc(numStyleRecords, sizeof(StyleRecord));

            int i;
            for (i = 0; i < numStyleRecords; i++)
            {
                styleRecords[i].startChar = READ_U16();
                styleRecords[i].endChar = READ_U16();
                styleRecords[i].fontID = READ_U16();
                styleRecords[i].faceStyleFlags = READ_U8();
                styleRecords[i].fontSize = READ_U8();
                styleRecords[i].textColorRGBA = READ_U32();
            }
        }
        else
        {

            SKIP_ARRAY(size);
        }
    }




    int maxOutputSize = textLength + SSA_PREAMBLE_LEN + (numStyleRecords * MAX_MARKUP_LEN);
    hb_buffer_t *out = hb_buffer_init( maxOutputSize );
    if ( out == ((void*)0) )
        goto fail;
    uint8_t *dst = out->data;
    uint8_t *start;
    int charIndex = 0;
    int styleIndex = 0;

    sprintf((char*)dst, "%d,,Default,,0,0,0,,", pv->line);
    dst += strlen((char*)dst);
    start = dst;
    for (pos = text, end = text + textLength; pos < end; pos++)
    {
        if (IS_10xxxxxx(*pos))
        {

            WRITE_CHAR(*pos);
            continue;
        }

        if (styleIndex < numStyleRecords)
        {
            if (styleRecords[styleIndex].endChar == charIndex)
            {
                if (styleIndex + 1 >= numStyleRecords ||
                    styleRecords[styleIndex+1].startChar > charIndex)
                {
                    dst += write_ssa_markup((char*)dst, ((void*)0));
                }
                styleIndex++;
            }
            if (styleRecords[styleIndex].startChar == charIndex)
            {
                dst += write_ssa_markup((char*)dst, &styleRecords[styleIndex]);
            }
        }

        if (*pos == '\n')
        {
            WRITE_CHAR('\\');
            WRITE_CHAR('N');
        }
        else
        {
            WRITE_CHAR(*pos);
        }
        charIndex++;
    }
    if (start == dst)
    {

        free(styleRecords);
        hb_buffer_close(&out);
        return ((void*)0);
    }
    *dst = '\0';
    dst++;


    out->size = dst - out->data;


    out->s.frametype = HB_FRAME_SUBTITLE;
    out->s.start = in->s.start;
    out->s.stop = in->s.stop;
    out->s.scr_sequence = in->s.scr_sequence;

fail:
    free(styleRecords);

    return out;
}
