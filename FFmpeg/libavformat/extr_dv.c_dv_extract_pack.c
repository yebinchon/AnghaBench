
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum dv_pack_type { ____Placeholder_dv_pack_type } dv_pack_type ;







__attribute__((used)) static const uint8_t *dv_extract_pack(const uint8_t *frame, enum dv_pack_type t)
{
    int offs;
    int c;

    for (c = 0; c < 10; c++) {
        switch (t) {
        case 130:
            if (c&1) offs = (80 * 6 + 80 * 16 * 0 + 3 + c*12000);
            else offs = (80 * 6 + 80 * 16 * 3 + 3 + c*12000);
            break;
        case 131:
            if (c&1) offs = (80 * 6 + 80 * 16 * 1 + 3 + c*12000);
            else offs = (80 * 6 + 80 * 16 * 4 + 3 + c*12000);
            break;
        case 128:
            if (c&1) offs = (80 * 3 + 8 + c*12000);
            else offs = (80 * 5 + 48 + 5 + c*12000);
            break;
        case 129:
            offs = (80*1 + 3 + 3);
            break;
        default:
            return ((void*)0);
        }
        if (frame[offs] == t)
            break;
    }

    return frame[offs] == t ? &frame[offs] : ((void*)0);
}
