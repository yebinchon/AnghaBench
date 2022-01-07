
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef int WORD ;
typedef int DWORD ;


 int AV_PIX_FMT_0RGB32 ;
 int AV_PIX_FMT_BGR24 ;
 int AV_PIX_FMT_MONOWHITE ;
 int AV_PIX_FMT_RGB4 ;
 int AV_PIX_FMT_RGB555 ;
 int AV_PIX_FMT_RGB8 ;


 int avpriv_find_pix_fmt (int ,int) ;
 int avpriv_get_raw_pix_fmt_tags () ;

__attribute__((used)) static enum AVPixelFormat dshow_pixfmt(DWORD biCompression, WORD biBitCount)
{
    switch(biCompression) {
    case 129:
    case 128:
        switch(biBitCount) {
            case 1:
                return AV_PIX_FMT_MONOWHITE;
            case 4:
                return AV_PIX_FMT_RGB4;
            case 8:
                return AV_PIX_FMT_RGB8;
            case 16:
                return AV_PIX_FMT_RGB555;
            case 24:
                return AV_PIX_FMT_BGR24;
            case 32:
                return AV_PIX_FMT_0RGB32;
        }
    }
    return avpriv_find_pix_fmt(avpriv_get_raw_pix_fmt_tags(), biCompression);
}
