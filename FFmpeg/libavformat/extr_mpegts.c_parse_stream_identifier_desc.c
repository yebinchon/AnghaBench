
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int get16 (int const**,int const*) ;
 int get8 (int const**,int const*) ;

__attribute__((used)) static int parse_stream_identifier_desc(const uint8_t *p, const uint8_t *p_end)
{
    const uint8_t **pp = &p;
    const uint8_t *desc_list_end;
    const uint8_t *desc_end;
    int desc_list_len;
    int desc_len, desc_tag;

    desc_list_len = get16(pp, p_end);
    if (desc_list_len < 0)
        return -1;
    desc_list_len &= 0xfff;
    desc_list_end = p + desc_list_len;
    if (desc_list_end > p_end)
        return -1;

    while (1) {
        desc_tag = get8(pp, desc_list_end);
        if (desc_tag < 0)
            return -1;
        desc_len = get8(pp, desc_list_end);
        if (desc_len < 0)
            return -1;
        desc_end = *pp + desc_len;
        if (desc_end > desc_list_end)
            return -1;

        if (desc_tag == 0x52) {
            return get8(pp, desc_end);
        }
        *pp = desc_end;
    }

    return -1;
}
