
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 scalar_t__ get_bits (int *,int) ;
 int get_bits_left (int *) ;

__attribute__((used)) static size_t cbs_av1_get_payload_bytes_left(GetBitContext *gbc)
{
    GetBitContext tmp = *gbc;
    size_t size = 0;
    for (int i = 0; get_bits_left(&tmp) >= 8; i++) {
        if (get_bits(&tmp, 8))
            size = i;
    }
    return size;
}
