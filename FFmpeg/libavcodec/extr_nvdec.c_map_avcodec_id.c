
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
 int cudaVideoCodec_H264 ;
 int cudaVideoCodec_HEVC ;
 int cudaVideoCodec_JPEG ;
 int cudaVideoCodec_MPEG1 ;
 int cudaVideoCodec_MPEG2 ;
 int cudaVideoCodec_MPEG4 ;
 int cudaVideoCodec_VC1 ;
 int cudaVideoCodec_VP8 ;
 int cudaVideoCodec_VP9 ;

__attribute__((used)) static int map_avcodec_id(enum AVCodecID id)
{
    switch (id) {
    case 137: return cudaVideoCodec_H264;
    case 136: return cudaVideoCodec_HEVC;
    case 135: return cudaVideoCodec_JPEG;
    case 134: return cudaVideoCodec_MPEG1;
    case 133: return cudaVideoCodec_MPEG2;
    case 132: return cudaVideoCodec_MPEG4;
    case 131: return cudaVideoCodec_VC1;
    case 130: return cudaVideoCodec_VP8;
    case 129: return cudaVideoCodec_VP9;
    case 128: return cudaVideoCodec_VC1;
    }
    return -1;
}
