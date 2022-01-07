
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__** streams; } ;
struct TYPE_7__ {int codec_id; } ;
struct TYPE_6__ {TYPE_2__* codec; } ;
typedef TYPE_2__ AVCodecContext ;
typedef int AVCodec ;


 int RETRO_LOG_ERROR ;
 int * avcodec_find_decoder (int ) ;
 scalar_t__ avcodec_open2 (TYPE_2__*,int *,int *) ;
 TYPE_4__* fctx ;
 int log_cb (int ,char*) ;

__attribute__((used)) static bool open_codec(AVCodecContext **ctx, unsigned index)
{
   AVCodec *codec = avcodec_find_decoder(fctx->streams[index]->codec->codec_id);

   if (!codec)
   {
      log_cb(RETRO_LOG_ERROR, "Couldn't find suitable decoder, exiting ... \n");
      return 0;
   }

   *ctx = fctx->streams[index]->codec;
   if (avcodec_open2(*ctx, codec, ((void*)0)) < 0)
      return 0;

   return 1;
}
