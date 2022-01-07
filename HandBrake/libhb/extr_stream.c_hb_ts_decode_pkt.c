
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_16__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_19__ {scalar_t__ packet_len; int header_len; } ;
struct TYPE_25__ {int continuity; int* pkt_summary; int skipbad; int pes_info_valid; scalar_t__ packet_len; size_t pes_list; TYPE_16__ pes_info; int packet_offset; TYPE_4__* buf; } ;
typedef TYPE_6__ hb_ts_stream_t ;
struct TYPE_21__ {TYPE_1__* list; } ;
struct TYPE_24__ {int discontinuity; int found_pcr; int pcr; scalar_t__ last_timestamp; TYPE_6__* list; } ;
struct TYPE_26__ {int chapter; int ts_flags; TYPE_2__ pes; TYPE_5__ ts; int frames; } ;
typedef TYPE_7__ hb_stream_t ;
typedef int hb_buffer_t ;
typedef int hb_buffer_list_t ;
struct TYPE_22__ {int new_chap; } ;
struct TYPE_23__ {int size; int data; TYPE_3__ s; } ;
struct TYPE_20__ {scalar_t__ stream_kind; } ;


 scalar_t__ P ;
 int TS_HAS_PCR ;
 scalar_t__ V ;
 int * flush_ts_streams (TYPE_7__*) ;
 int * generate_output_data (TYPE_7__*,int) ;
 int hb_buffer_list_append (int *,int *) ;
 int * hb_buffer_list_clear (int *) ;
 scalar_t__ hb_parse_ps (TYPE_7__*,int ,int,TYPE_16__*) ;
 int hb_ts_stream_append_pkt (TYPE_7__*,int,int const*,int) ;
 int index_of_pid (TYPE_7__*,int) ;
 scalar_t__ memcmp (int*,int*,int) ;
 int memcpy (int*,int const*,int) ;
 int memset (int*,int ,int) ;
 int pes_timestamp (int const*) ;
 int ts_err (TYPE_7__*,int,char*,...) ;
 int ts_index_of_video (TYPE_7__*) ;
 scalar_t__ ts_stream_kind (TYPE_7__*,int) ;
 int ts_warn (TYPE_7__*,char*,int,int) ;

hb_buffer_t * hb_ts_decode_pkt( hb_stream_t *stream, const uint8_t * pkt,
                                int chapter, int discontinuity )
{




    int video_index = ts_index_of_video(stream);
    int curstream;
    hb_buffer_t *buf = ((void*)0);
    hb_buffer_list_t list;

    hb_buffer_list_clear(&list);

    if (chapter > 0)
    {
        stream->chapter = chapter;
    }
    if (discontinuity)
    {

        buf = flush_ts_streams(stream);
        hb_buffer_list_append(&list, buf);

        stream->ts.discontinuity = 1;
    }




    int pid = ((pkt[1] & 0x1F) << 8) | pkt[2];
    if ( ( curstream = index_of_pid( stream, pid ) ) < 0 )
    {

        return hb_buffer_list_clear(&list);
    }



    int errorbit = (pkt[1] & 0x80) != 0;
    if (errorbit)
    {
        ts_err( stream, curstream, "packet error bit set");
        return hb_buffer_list_clear(&list);
    }


    int adaption = (pkt[3] & 0x30) >> 4;
    int adapt_len = 0;
    if (adaption == 0)
    {
        ts_err( stream, curstream, "adaptation code 0");
        return hb_buffer_list_clear(&list);
    }
    else if (adaption == 0x2)
        adapt_len = 184;
    else if (adaption == 0x3)
    {
        adapt_len = pkt[4] + 1;
        if (adapt_len > 184)
        {
            ts_err( stream, curstream, "invalid adapt len %d", adapt_len);
            return hb_buffer_list_clear(&list);
        }
    }

    if (adapt_len > 0)
    {
        if (pkt[5] & 0x40)
        {

        }






        if (adapt_len > 7 && (pkt[5] & 0x10) != 0 &&
            !(pkt[5] == 0xff && pkt[6] == 0xff && pkt[7] == 0xff &&
              pkt[8] == 0xff && pkt[9] == 0xff && pkt[10] == 0xff))
        {



            buf = flush_ts_streams(stream);
            hb_buffer_list_append(&list, buf);

            int64_t pcr;
            pcr = ((uint64_t)pkt[ 6] << (33 - 8) ) |
                  ((uint64_t)pkt[ 7] << (33 - 16) ) |
                  ((uint64_t)pkt[ 8] << (33 - 24) ) |
                  ((uint64_t)pkt[ 9] << (33 - 32) ) |
                  ( pkt[10] >> 7 );
            stream->ts.found_pcr = 1;
            stream->ts_flags |= TS_HAS_PCR;
            stream->ts.pcr = pcr;
        }
    }






    if (!stream->ts.found_pcr && (stream->ts_flags & TS_HAS_PCR))
    {
        return hb_buffer_list_clear(&list);
    }




    hb_ts_stream_t * ts_stream = &stream->ts.list[curstream];
    int start = (pkt[1] & 0x40) != 0;

    if ( (adaption & 0x01) != 0 )
    {
        int continuity = (pkt[3] & 0xF);
        if ( continuity == ts_stream->continuity )
        {





            uint8_t summary[8];

            summary[0] = adaption;
            summary[1] = adapt_len;
            if (adapt_len + 4 + 6 + 9 <= 188)
            {
                memcpy(&summary[2], pkt+4+adapt_len+9, 6);
            }
            else
            {
                memset(&summary[2], 0, 6);
            }
            if ( memcmp( summary, ts_stream->pkt_summary, 8 ) == 0 )
            {




                return hb_buffer_list_clear(&list);
            }
        }
        if ( !start && (ts_stream->continuity != -1) &&
             !ts_stream->skipbad &&
             (continuity != ( (ts_stream->continuity + 1) & 0xf ) ) )
        {
            if (continuity == ts_stream->continuity)
            {


                return hb_buffer_list_clear(&list);
            }
            ts_warn( stream, "continuity error: got %d expected %d",
                    (int)continuity, (ts_stream->continuity + 1) & 0xf );
            ts_stream->continuity = continuity;
        }
        ts_stream->continuity = continuity;





        ts_stream->pkt_summary[0] = adaption;
        ts_stream->pkt_summary[1] = adapt_len;
        if (adapt_len + 4 + 6 + 9 <= 188)
        {
            memcpy(&ts_stream->pkt_summary[2],
                    pkt+4+adapt_len+9, 6);
        }
        else
        {
            memset(&ts_stream->pkt_summary[2], 0, 6);
        }
    }

    if (ts_stream_kind( stream, curstream ) == P)
    {






        return hb_buffer_list_clear(&list);
    }


    if (start)
    {



        if (ts_stream->buf->size > 0)
        {



            buf = generate_output_data(stream, curstream);
            hb_buffer_list_append(&list, buf);
        }
        ts_stream->pes_info_valid = 0;
        ts_stream->packet_len = 0;


        const uint8_t *pes = pkt + adapt_len + 4;
        if (pes[0] != 0x00 || pes[1] != 0x00 || pes[2] != 0x01)
        {
            ts_err( stream, curstream, "missing start code" );
            ts_stream->skipbad = 1;
            return hb_buffer_list_clear(&list);
        }


        ts_stream->skipbad = 0;

        if (curstream == video_index)
        {
            ++stream->frames;



            if (!stream->ts.found_pcr)
            {


                if (stream->ts.last_timestamp < 0 && (pes[7] >> 6) == 0)
                {
                    return hb_buffer_list_clear(&list);
                }
                if ((pes[7] >> 6) != 0)
                {



                    int64_t timestamp;
                    timestamp = pes_timestamp(pes + (pes[7] & 0x40 ? 14 : 9));
                    if (stream->ts.last_timestamp < 0 ||
                        timestamp - stream->ts.last_timestamp > 90 * 600 ||
                        stream->ts.last_timestamp - timestamp > 90 * 600)
                    {
                        stream->ts.pcr = timestamp;
                    }
                    stream->ts.last_timestamp = timestamp;
                }
            }
        }
    }


    hb_ts_stream_append_pkt(stream, curstream, pkt + 4 + adapt_len,
                            184 - adapt_len);
    if (stream->chapter > 0 &&
        stream->pes.list[ts_stream->pes_list].stream_kind == V)
    {
        ts_stream->buf->s.new_chap = stream->chapter;
        stream->chapter = 0;
    }

    if (!ts_stream->pes_info_valid && ts_stream->buf->size >= 19)
    {
        if (hb_parse_ps(stream, ts_stream->buf->data, ts_stream->buf->size,
                        &ts_stream->pes_info))
        {
            ts_stream->pes_info_valid = 1;
            ts_stream->packet_offset = ts_stream->pes_info.header_len;
        }
    }


    if (ts_stream->pes_info_valid &&
        ts_stream->pes_info.packet_len > 0 &&
        ts_stream->packet_len >= ts_stream->pes_info.packet_len + 6)
    {
        buf = generate_output_data(stream, curstream);
        hb_buffer_list_append(&list, buf);
    }
    return hb_buffer_list_clear(&list);
}
