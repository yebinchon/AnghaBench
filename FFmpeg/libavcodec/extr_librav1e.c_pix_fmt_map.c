
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef int RaChromaSampling ;
 int RA_CHROMA_SAMPLING_CS420 ;
 int RA_CHROMA_SAMPLING_CS422 ;
 int RA_CHROMA_SAMPLING_CS444 ;
 int av_assert0 (int ) ;

__attribute__((used)) static inline RaChromaSampling pix_fmt_map(enum AVPixelFormat pix_fmt)
{
    switch (pix_fmt) {
    case 139:
    case 130:
    case 138:
    case 137:
        return RA_CHROMA_SAMPLING_CS420;
    case 136:
    case 129:
    case 135:
    case 134:
        return RA_CHROMA_SAMPLING_CS422;
    case 133:
    case 128:
    case 132:
    case 131:
        return RA_CHROMA_SAMPLING_CS444;
    default:
        av_assert0(0);
    }
}
