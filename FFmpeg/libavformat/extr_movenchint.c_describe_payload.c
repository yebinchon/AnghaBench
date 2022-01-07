
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int HintSampleQueue ;
typedef int AVIOContext ;


 scalar_t__ find_sample_match (int const*,int,int *,int*,int*,int*,int*) ;
 int output_immediate (int const*,int,int *,int*) ;
 int output_match (int *,int,int,int,int*) ;

__attribute__((used)) static void describe_payload(const uint8_t *data, int size,
                             AVIOContext *out, int *entries,
                             HintSampleQueue *queue)
{

    while (size > 0) {
        int match_sample, match_offset, match_len, pos;
        if (find_sample_match(data, size, queue, &pos, &match_sample,
                              &match_offset, &match_len) < 0)
            break;
        output_immediate(data, pos, out, entries);
        data += pos;
        size -= pos;
        output_match(out, match_sample, match_offset, match_len, entries);
        data += match_len;
        size -= match_len;
    }
    output_immediate(data, size, out, entries);
}
