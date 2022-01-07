
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AVERROR (int ) ;





 int EINVAL ;

int avpriv_set_systematic_pal2(uint32_t pal[256], enum AVPixelFormat pix_fmt)
{
    int i;

    for (i = 0; i < 256; i++) {
        int r, g, b;

        switch (pix_fmt) {
        case 128:
            r = (i>>5 )*36;
            g = ((i>>2)&7)*36;
            b = (i&3 )*85;
            break;
        case 131:
            b = (i>>6 )*85;
            g = ((i>>3)&7)*36;
            r = (i&7 )*36;
            break;
        case 129:
            r = (i>>3 )*255;
            g = ((i>>1)&3)*85;
            b = (i&1 )*255;
            break;
        case 132:
            b = (i>>3 )*255;
            g = ((i>>1)&3)*85;
            r = (i&1 )*255;
            break;
        case 130:
            r = b = g = i;
            break;
        default:
            return AVERROR(EINVAL);
        }
        pal[i] = b + (g << 8) + (r << 16) + (0xFFU << 24);
    }

    return 0;
}
