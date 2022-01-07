
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;


 int ff_get_pcm_codec_id (int,int,int,int) ;

__attribute__((used)) static inline enum AVCodecID ff_mov_get_lpcm_codec_id(int bps, int flags)
{





    return ff_get_pcm_codec_id(bps, flags & 1, flags & 2, flags & 4 ? -1 : 0);
}
