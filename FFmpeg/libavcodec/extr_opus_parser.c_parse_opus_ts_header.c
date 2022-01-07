
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int GetByteContext ;


 int bytestream2_get_byte (int *) ;
 int bytestream2_init (int *,int const*,int) ;
 int bytestream2_peek_byte (int *) ;
 int bytestream2_skip (int *,int) ;
 int bytestream2_tell (int *) ;

__attribute__((used)) static const uint8_t *parse_opus_ts_header(const uint8_t *start, int *payload_len, int buf_len)
{
    const uint8_t *buf = start + 1;
    int start_trim_flag, end_trim_flag, control_extension_flag, control_extension_length;
    uint8_t flags;
    uint64_t payload_len_tmp;

    GetByteContext gb;
    bytestream2_init(&gb, buf, buf_len);

    flags = bytestream2_get_byte(&gb);
    start_trim_flag = (flags >> 4) & 1;
    end_trim_flag = (flags >> 3) & 1;
    control_extension_flag = (flags >> 2) & 1;

    payload_len_tmp = *payload_len = 0;
    while (bytestream2_peek_byte(&gb) == 0xff)
        payload_len_tmp += bytestream2_get_byte(&gb);

    payload_len_tmp += bytestream2_get_byte(&gb);

    if (start_trim_flag)
        bytestream2_skip(&gb, 2);
    if (end_trim_flag)
        bytestream2_skip(&gb, 2);
    if (control_extension_flag) {
        control_extension_length = bytestream2_get_byte(&gb);
        bytestream2_skip(&gb, control_extension_length);
    }

    if (bytestream2_tell(&gb) + payload_len_tmp > buf_len)
        return ((void*)0);

    *payload_len = payload_len_tmp;

    return buf + bytestream2_tell(&gb);
}
