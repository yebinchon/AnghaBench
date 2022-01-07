
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_windows; int num_bands; void** ms_info; int * grouping; void* ms_present; } ;
typedef TYPE_1__ On2AVCContext ;
typedef int GetBitContext ;


 void* get_bits1 (int *) ;
 int memcpy (void**,void**,int) ;

__attribute__((used)) static void on2avc_read_ms_info(On2AVCContext *c, GetBitContext *gb)
{
    int w, b, band_off = 0;

    c->ms_present = get_bits1(gb);
    if (!c->ms_present)
        return;
    for (w = 0; w < c->num_windows; w++) {
        if (!c->grouping[w]) {
            memcpy(c->ms_info + band_off,
                   c->ms_info + band_off - c->num_bands,
                   c->num_bands * sizeof(*c->ms_info));
            band_off += c->num_bands;
            continue;
        }
        for (b = 0; b < c->num_bands; b++)
            c->ms_info[band_off++] = get_bits1(gb);
    }
}
