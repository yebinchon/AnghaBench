#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {void* height; void* width; int /*<<< orphan*/  format; } ;
struct TYPE_5__ {TYPE_2__* codecpar; } ;
typedef  int /*<<< orphan*/  PayloadContext ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_2__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV420P ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV422P ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV444P ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t INT_MAX ; 
 void* FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s,
                                AVStream* stream,
                                PayloadContext *xiph_data,
                                const char *attr, const char *value)
{
    AVCodecParameters *par = stream->codecpar;
    int result = 0;

    if (!FUNC7(attr, "sampling")) {
        if (!FUNC7(value, "YCbCr-4:2:0")) {
            par->format = AV_PIX_FMT_YUV420P;
        } else if (!FUNC7(value, "YCbCr-4:4:2")) {
            par->format = AV_PIX_FMT_YUV422P;
        } else if (!FUNC7(value, "YCbCr-4:4:4")) {
            par->format = AV_PIX_FMT_YUV444P;
        } else {
            FUNC4(s, AV_LOG_ERROR,
                   "Unsupported pixel format %s\n", attr);
            return AVERROR_INVALIDDATA;
        }
    } else if (!FUNC7(attr, "width")) {
        /* This is an integer between 1 and 1048561
         * and MUST be in multiples of 16. */
        par->width = FUNC1(value);
        return 0;
    } else if (!FUNC7(attr, "height")) {
        /* This is an integer between 1 and 1048561
         * and MUST be in multiples of 16. */
        par->height = FUNC1(value);
        return 0;
    } else if (!FUNC7(attr, "delivery-method")) {
        /* Possible values are: inline, in_band, out_band/specific_name. */
        return AVERROR_PATCHWELCOME;
    } else if (!FUNC7(attr, "configuration-uri")) {
        /* NOTE: configuration-uri is supported only under 2 conditions:
         *--after the delivery-method tag
         * --with a delivery-method value of out_band */
        return AVERROR_PATCHWELCOME;
    } else if (!FUNC7(attr, "configuration")) {
        /* NOTE: configuration is supported only AFTER the delivery-method tag
         * The configuration value is a base64 encoded packed header */
        uint8_t *decoded_packet = NULL;
        int packet_size;
        size_t decoded_alloc = FUNC8(value) / 4 * 3 + 4;

        if (decoded_alloc <= INT_MAX) {
            decoded_packet = FUNC5(decoded_alloc);
            if (decoded_packet) {
                packet_size =
                    FUNC2(decoded_packet, value, decoded_alloc);

                result = FUNC6
                    (s, decoded_packet, decoded_packet + packet_size, par,
                    xiph_data);
            } else {
                FUNC4(s, AV_LOG_ERROR,
                       "Out of memory while decoding SDP configuration.\n");
                result = FUNC0(ENOMEM);
            }
        } else {
            FUNC4(s, AV_LOG_ERROR, "Packet too large\n");
            result = AVERROR_INVALIDDATA;
        }
        FUNC3(decoded_packet);
    }
    return result;
}