
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_4__ {char* name; } ;
typedef TYPE_1__ AVCodec ;


 TYPE_1__* next_codec_for_id (int,TYPE_1__ const*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void print_codecs_for_id(enum AVCodecID id, int encoder)
{
    const AVCodec *codec = ((void*)0);

    printf(" (%s: ", encoder ? "encoders" : "decoders");

    while ((codec = next_codec_for_id(id, codec, encoder)))
        printf("%s ", codec->name);

    printf(")");
}
