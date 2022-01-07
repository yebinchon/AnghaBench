
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int GetBitContext ;


 int AV_RB16 (int const*) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_count (int *) ;
 int get_bits_long (int *,int) ;
 int init_get_bits (int *,int const*,int) ;
 int skip_bits (int *,int) ;

int
ff_rdt_parse_header(const uint8_t *buf, int len,
                    int *pset_id, int *pseq_no, int *pstream_id,
                    int *pis_keyframe, uint32_t *ptimestamp)
{
    GetBitContext gb;
    int consumed = 0, set_id, seq_no, stream_id, is_keyframe,
        len_included, need_reliable;
    uint32_t timestamp;


    while (len >= 5 && buf[1] == 0xFF ) {
        int pkt_len;

        if (!(buf[0] & 0x80))
            return -1;

        pkt_len = AV_RB16(buf+3);
        buf += pkt_len;
        len -= pkt_len;
        consumed += pkt_len;
    }
    if (len < 16)
        return -1;
    init_get_bits(&gb, buf, len << 3);
    len_included = get_bits1(&gb);
    need_reliable = get_bits1(&gb);
    set_id = get_bits(&gb, 5);
    skip_bits(&gb, 1);
    seq_no = get_bits(&gb, 16);
    if (len_included)
        skip_bits(&gb, 16);
    skip_bits(&gb, 2);
    stream_id = get_bits(&gb, 5);
    is_keyframe = !get_bits1(&gb);
    timestamp = get_bits_long(&gb, 32);
    if (set_id == 0x1f)
        set_id = get_bits(&gb, 16);
    if (need_reliable)
        skip_bits(&gb, 16);
    if (stream_id == 0x1f)
        stream_id = get_bits(&gb, 16);

    if (pset_id) *pset_id = set_id;
    if (pseq_no) *pseq_no = seq_no;
    if (pstream_id) *pstream_id = stream_id;
    if (pis_keyframe) *pis_keyframe = is_keyframe;
    if (ptimestamp) *ptimestamp = timestamp;

    return consumed + (get_bits_count(&gb) >> 3);
}
