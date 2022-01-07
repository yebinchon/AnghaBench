
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t ts_number_pat_entries; TYPE_1__* pat_info; } ;
typedef TYPE_2__ hb_stream_t ;
typedef int bitbuf_t ;
struct TYPE_4__ {unsigned int program_number; unsigned int program_map_PID; } ;


 void* bits_get (int *,int) ;
 int bits_init (int *,unsigned char*,unsigned int,int ) ;
 int hb_log (char*) ;
 size_t kMaxNumberPMTStreams ;
 int memcpy (unsigned char*,int const*,int) ;

__attribute__((used)) static int decode_PAT(const uint8_t *buf, hb_stream_t *stream)
{
    unsigned char tablebuf[1024];
    unsigned int tablepos = 0;

    int reading = 0;



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


    int pointer_len = buf[4 + adapt_len] + 1;


    int start;
    start = (buf[1] & 0x40) != 0;

    if (start)
            reading = 1;


    if (reading && (184 - adapt_len) > 0)
    {
            if (tablepos + 184 - adapt_len - pointer_len > 1024)
            {
                    hb_log("decode_PAT - Bad program section length (> 1024)");
                    return 0;
            }
            memcpy(tablebuf + tablepos, buf + 4 + adapt_len + pointer_len, 184 - adapt_len - pointer_len);
            tablepos += 184 - adapt_len - pointer_len;
    }

    if (start && reading)
    {
            memcpy(tablebuf + tablepos, buf + 4 + adapt_len + 1, pointer_len - 1);


            unsigned int pos = 0;

            {
                    bitbuf_t bb;
                    bits_init(&bb, tablebuf + pos, tablepos - pos, 0);

                    unsigned char section_id = bits_get(&bb, 8);
                    bits_get(&bb, 4);
                    unsigned int section_len = bits_get(&bb, 12);
                    bits_get(&bb, 16);
                    bits_get(&bb, 2);
                    bits_get(&bb, 5);
                    bits_get(&bb, 1);
                    bits_get(&bb, 8);
                    bits_get(&bb, 8);

                    switch (section_id)
                    {
                      case 0x00:
                        {

                          section_len -= 5;
                          section_len -= 4;
                          int curr_pos = 0;
                          stream->ts_number_pat_entries = 0;
                          while ((curr_pos < section_len) && (stream->ts_number_pat_entries < kMaxNumberPMTStreams))
                          {
                            unsigned int pkt_program_num = bits_get(&bb, 16);
                            stream->pat_info[stream->ts_number_pat_entries].program_number = pkt_program_num;

                            bits_get(&bb, 3);
                            if (pkt_program_num == 0)
                            {
                              bits_get(&bb, 13);
                            }
                            else
                            {
                              unsigned int pkt_program_map_PID = bits_get(&bb, 13);
                                stream->pat_info[stream->ts_number_pat_entries].program_map_PID = pkt_program_map_PID;
                            }
                            curr_pos += 4;
                            stream->ts_number_pat_entries++;
                          }
                        }
                        break;
                      case 0xC7:
                            {
                                    break;
                            }
                      case 0xC8:
                            {
                                    break;
                            }
                    }


            }


    }
    return 1;
}
