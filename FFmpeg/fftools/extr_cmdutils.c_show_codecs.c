
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
struct TYPE_7__ {char* name; int props; char* long_name; int id; int type; } ;
typedef TYPE_1__ AVCodecDescriptor ;
typedef TYPE_2__ AVCodec ;


 int AV_CODEC_PROP_INTRA_ONLY ;
 int AV_CODEC_PROP_LOSSLESS ;
 int AV_CODEC_PROP_LOSSY ;
 int av_free (TYPE_1__ const**) ;
 scalar_t__ avcodec_find_decoder (int ) ;
 scalar_t__ avcodec_find_encoder (int ) ;
 unsigned int get_codecs_sorted (TYPE_1__ const***) ;
 int get_media_type_char (int ) ;
 TYPE_2__* next_codec_for_id (int ,TYPE_2__ const*,int) ;
 int print_codecs_for_id (int ,int) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strstr (char*,char*) ;

int show_codecs(void *optctx, const char *opt, const char *arg)
{
    const AVCodecDescriptor **codecs;
    unsigned i, nb_codecs = get_codecs_sorted(&codecs);

    printf("Codecs:\n"
           " D..... = Decoding supported\n"
           " .E.... = Encoding supported\n"
           " ..V... = Video codec\n"
           " ..A... = Audio codec\n"
           " ..S... = Subtitle codec\n"
           " ...I.. = Intra frame-only codec\n"
           " ....L. = Lossy compression\n"
           " .....S = Lossless compression\n"
           " -------\n");
    for (i = 0; i < nb_codecs; i++) {
        const AVCodecDescriptor *desc = codecs[i];
        const AVCodec *codec = ((void*)0);

        if (strstr(desc->name, "_deprecated"))
            continue;

        printf(" ");
        printf(avcodec_find_decoder(desc->id) ? "D" : ".");
        printf(avcodec_find_encoder(desc->id) ? "E" : ".");

        printf("%c", get_media_type_char(desc->type));
        printf((desc->props & AV_CODEC_PROP_INTRA_ONLY) ? "I" : ".");
        printf((desc->props & AV_CODEC_PROP_LOSSY) ? "L" : ".");
        printf((desc->props & AV_CODEC_PROP_LOSSLESS) ? "S" : ".");

        printf(" %-20s %s", desc->name, desc->long_name ? desc->long_name : "");



        while ((codec = next_codec_for_id(desc->id, codec, 0))) {
            if (strcmp(codec->name, desc->name)) {
                print_codecs_for_id(desc->id, 0);
                break;
            }
        }
        codec = ((void*)0);
        while ((codec = next_codec_for_id(desc->id, codec, 1))) {
            if (strcmp(codec->name, desc->name)) {
                print_codecs_for_id(desc->id, 1);
                break;
            }
        }

        printf("\n");
    }
    av_free(codecs);
    return 0;
}
