
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_6__ {size_t* data; size_t size; } ;
typedef TYPE_1__ AVPacket ;


 size_t AV_WL16 (size_t*,size_t) ;
 size_t AV_WL24 (size_t*,size_t) ;
 size_t AV_WL32 (size_t*,size_t) ;
 int av_assert0 (int) ;
 int av_log2 (unsigned int) ;
 int av_new_packet (TYPE_1__*,unsigned int) ;
 int memcpy (size_t*,size_t*,size_t) ;
 int stats (TYPE_1__* const*,int,unsigned int*,unsigned int*) ;
 int wloop (unsigned int,size_t) ;

__attribute__((used)) static int merge_superframe(AVPacket * const *in, int n_in, AVPacket *out)
{
    unsigned max, sum, mag, marker, n, sz;
    uint8_t *ptr;
    int res;

    stats(in, n_in, &max, &sum);
    mag = av_log2(max) >> 3;
    marker = 0xC0 + (mag << 3) + (n_in - 1);
    sz = sum + 2 + (mag + 1) * n_in;
    res = av_new_packet(out, sz);
    if (res < 0)
        return res;
    ptr = out->data;
    for (n = 0; n < n_in; n++) {
        memcpy(ptr, in[n]->data, in[n]->size);
        ptr += in[n]->size;
    }
    *ptr++ = marker;
    switch (mag) {
    case 0:
        do { for (n = 0; n < n_in; n++) { *ptr = in[n]->size; ptr += mag + 1; } } while (0);
        break;
    case 1:
        do { for (n = 0; n < n_in; n++) { AV_WL16(ptr, in[n]->size); ptr += mag + 1; } } while (0);
        break;
    case 2:
        do { for (n = 0; n < n_in; n++) { AV_WL24(ptr, in[n]->size); ptr += mag + 1; } } while (0);
        break;
    case 3:
        do { for (n = 0; n < n_in; n++) { AV_WL32(ptr, in[n]->size); ptr += mag + 1; } } while (0);
        break;
    }
    *ptr++ = marker;
    av_assert0(ptr == &out->data[out->size]);

    return 0;
}
