
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ CISTPL_CODE_END ;
 int assert (int) ;

__attribute__((used)) static bool check_tuples_in_buffer(uint8_t* buf, int buffer_size, int* inout_cis_offset)
{
    int cis_offset = *inout_cis_offset;
    if (cis_offset == -1) {

        cis_offset += buf[0] + 2;
    }
    assert(cis_offset >= 0);
    while (1) {
        if (cis_offset < buffer_size) {

            if (buf[cis_offset] == CISTPL_CODE_END) {
                *inout_cis_offset = cis_offset + 1;
                return 1;
            }
        }
        if (cis_offset + 1 < buffer_size) {
            cis_offset += buf[cis_offset+1] + 2;
        } else {
            break;
        }
    }
    *inout_cis_offset = cis_offset;
    return 0;
}
