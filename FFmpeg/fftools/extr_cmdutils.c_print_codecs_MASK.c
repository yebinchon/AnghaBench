#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int capabilities; char* name; char* long_name; } ;
struct TYPE_7__ {char* name; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ AVCodecDescriptor ;
typedef  TYPE_2__ AVCodec ;

/* Variables and functions */
 int AV_CODEC_CAP_DR1 ; 
 int AV_CODEC_CAP_DRAW_HORIZ_BAND ; 
 int AV_CODEC_CAP_EXPERIMENTAL ; 
 int AV_CODEC_CAP_FRAME_THREADS ; 
 int AV_CODEC_CAP_SLICE_THREADS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const**) ; 
 unsigned int FUNC1 (TYPE_1__ const***) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(int encoder)
{
    const AVCodecDescriptor **codecs;
    unsigned i, nb_codecs = FUNC1(&codecs);

    FUNC4("%s:\n"
           " V..... = Video\n"
           " A..... = Audio\n"
           " S..... = Subtitle\n"
           " .F.... = Frame-level multithreading\n"
           " ..S... = Slice-level multithreading\n"
           " ...X.. = Codec is experimental\n"
           " ....B. = Supports draw_horiz_band\n"
           " .....D = Supports direct rendering method 1\n"
           " ------\n",
           encoder ? "Encoders" : "Decoders");
    for (i = 0; i < nb_codecs; i++) {
        const AVCodecDescriptor *desc = codecs[i];
        const AVCodec *codec = NULL;

        while ((codec = FUNC3(desc->id, codec, encoder))) {
            FUNC4(" %c", FUNC2(desc->type));
            FUNC4((codec->capabilities & AV_CODEC_CAP_FRAME_THREADS) ? "F" : ".");
            FUNC4((codec->capabilities & AV_CODEC_CAP_SLICE_THREADS) ? "S" : ".");
            FUNC4((codec->capabilities & AV_CODEC_CAP_EXPERIMENTAL)  ? "X" : ".");
            FUNC4((codec->capabilities & AV_CODEC_CAP_DRAW_HORIZ_BAND)?"B" : ".");
            FUNC4((codec->capabilities & AV_CODEC_CAP_DR1)           ? "D" : ".");

            FUNC4(" %-20s %s", codec->name, codec->long_name ? codec->long_name : "");
            if (FUNC5(codec->name, desc->name))
                FUNC4(" (codec %s)", desc->name);

            FUNC4("\n");
        }
    }
    FUNC0(codecs);
}