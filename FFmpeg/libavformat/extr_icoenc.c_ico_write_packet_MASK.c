#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int width; int height; scalar_t__ codec_id; int /*<<< orphan*/  bits_per_coded_sample; } ;
struct TYPE_14__ {TYPE_1__** streams; int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {size_t stream_index; int size; scalar_t__ data; } ;
struct TYPE_12__ {int width; int height; int size; int /*<<< orphan*/  bits; int /*<<< orphan*/  offset; } ;
struct TYPE_11__ {scalar_t__ current_image; scalar_t__ nb_images; TYPE_3__* images; } ;
struct TYPE_10__ {TYPE_6__* codecpar; } ;
typedef  TYPE_2__ IcoMuxContext ;
typedef  TYPE_3__ IcoImage ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_PNG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, AVPacket *pkt)
{
    IcoMuxContext *ico = s->priv_data;
    IcoImage *image;
    AVIOContext *pb = s->pb;
    AVCodecParameters *par = s->streams[pkt->stream_index]->codecpar;
    int i;

    if (ico->current_image >= ico->nb_images) {
        FUNC3(s, AV_LOG_ERROR, "ICO already contains %d images\n", ico->current_image);
        return FUNC0(EIO);
    }

    image = &ico->images[ico->current_image++];

    image->offset = FUNC4(pb);
    image->width = (par->width == 256) ? 0 : par->width;
    image->height = (par->height == 256) ? 0 : par->height;

    if (par->codec_id == AV_CODEC_ID_PNG) {
        image->bits = par->bits_per_coded_sample;
        image->size = pkt->size;

        FUNC7(pb, pkt->data, pkt->size);
    } else { // BMP
        if (FUNC2(pkt->data + 14) != 40) { // must be BITMAPINFOHEADER
            FUNC3(s, AV_LOG_ERROR, "Invalid BMP\n");
            return FUNC0(EINVAL);
        }

        image->bits = FUNC1(pkt->data + 28); // allows things like 1bit and 4bit images to be preserved
        image->size = pkt->size - 14 + par->height * (par->width + 7) / 8;

        FUNC7(pb, pkt->data + 14, 8); // Skip the BITMAPFILEHEADER header
        FUNC6(pb, FUNC2(pkt->data + 22) * 2); // rewrite height as 2 * height
        FUNC7(pb, pkt->data + 26, pkt->size - 26);

        for (i = 0; i < par->height * (par->width + 7) / 8; ++i)
            FUNC5(pb, 0x00); // Write bitmask (opaque)
    }

    return 0;
}