
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static int match_segments(const uint8_t *haystack, int h_len,
                          const uint8_t *needle, int n_pos, int n_len,
                          int *match_h_offset_ptr, int *match_n_offset_ptr,
                          int *match_len_ptr)
{
    int h_pos;
    for (h_pos = 0; h_pos < h_len; h_pos++) {
        int match_len = 0;
        int match_h_pos, match_n_pos;


        while (h_pos + match_len < h_len && n_pos + match_len < n_len &&
               needle[n_pos + match_len] == haystack[h_pos + match_len])
            match_len++;
        if (match_len <= 8)
            continue;



        match_h_pos = h_pos;
        match_n_pos = n_pos;
        while (match_n_pos > 0 && match_h_pos > 0 &&
               needle[match_n_pos - 1] == haystack[match_h_pos - 1]) {
            match_n_pos--;
            match_h_pos--;
            match_len++;
        }
        if (match_len <= 14)
            continue;
        *match_h_offset_ptr = match_h_pos;
        *match_n_offset_ptr = match_n_pos;
        *match_len_ptr = match_len;
        return 0;
    }
    return -1;
}
