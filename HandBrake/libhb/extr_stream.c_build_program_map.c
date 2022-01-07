
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int tablepos; int current_continuity_counter; int reading; int* tablebuf; } ;
struct TYPE_6__ {TYPE_1__ pmt_info; } ;
typedef TYPE_2__ hb_stream_t ;


 int decode_program_map (TYPE_2__*) ;
 int free (int*) ;
 int hb_log (char*,int,int) ;
 int memcpy (int ,int const*,int) ;
 int* realloc (int*,int) ;

__attribute__((used)) static int build_program_map(const uint8_t *buf, hb_stream_t *stream)
{

    int adapt_len = 0;
    int adaption = (buf[3] & 0x30) >> 4;
    if (adaption == 0)
            return 0;
    else if (adaption == 0x2)
            adapt_len = 184;
    else if (adaption == 0x3)
            adapt_len = buf[4] + 1;
    if (adapt_len > 184)
            return 0;


    int start;
    start = (buf[1] & 0x40) != 0;


    int pointer_len = 0;

    if (start)
    {
        pointer_len = buf[4 + adapt_len] + 1;
        stream->pmt_info.tablepos = 0;
    }

    int continuity_counter = buf[3] & 0x0f;
    if (!start && (stream->pmt_info.current_continuity_counter + 1 != continuity_counter))
    {
        hb_log("build_program_map - Continuity Counter %d out of sequence - expected %d", continuity_counter, stream->pmt_info.current_continuity_counter+1);
        return 0;
    }
    stream->pmt_info.current_continuity_counter = continuity_counter;
    stream->pmt_info.reading |= start;


    int amount_to_copy = 184 - adapt_len - pointer_len;
    if (stream->pmt_info.reading && (amount_to_copy > 0))
    {
            stream->pmt_info.tablebuf = realloc(stream->pmt_info.tablebuf, stream->pmt_info.tablepos + amount_to_copy);

            memcpy(stream->pmt_info.tablebuf + stream->pmt_info.tablepos, buf + 4 + adapt_len + pointer_len, amount_to_copy);
            stream->pmt_info.tablepos += amount_to_copy;
    }
    if (stream->pmt_info.tablepos > 3)
    {

        int length;
        length = ((stream->pmt_info.tablebuf[1] << 8) +
                  stream->pmt_info.tablebuf[2]) & 0xFFF;
        if (stream->pmt_info.tablepos > length + 1)
        {

            int decode_ok = 0;
            if (stream->pmt_info.tablebuf[0] == 0x02)
                decode_ok = decode_program_map(stream);
            free(stream->pmt_info.tablebuf);
            stream->pmt_info.tablebuf = ((void*)0);
            stream->pmt_info.tablepos = 0;
            stream->pmt_info.reading = 0;
            if (decode_ok)
                return decode_ok;
        }

    }

    return 0;
}
