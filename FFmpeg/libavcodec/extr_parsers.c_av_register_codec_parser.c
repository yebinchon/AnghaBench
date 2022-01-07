
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecParser ;


 int av_parser_init_next ;
 int av_parser_next_init ;
 int ff_thread_once (int *,int ) ;

void av_register_codec_parser(AVCodecParser *parser)
{
    ff_thread_once(&av_parser_next_init, av_parser_init_next);
}
