#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct SwsContext {int dummy; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_PIX_FMT_RGB24 ; 
 int AV_PIX_FMT_YUV420P ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SWS_BILINEAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ **,int*,int,int,int,int) ; 
 scalar_t__ FUNC4 (int*,int*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (struct SwsContext*) ; 
 struct SwsContext* FUNC12 (int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct SwsContext*,int /*<<< orphan*/  const* const*,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int*) ; 

int FUNC14(int argc, char **argv)
{
    uint8_t *src_data[4], *dst_data[4];
    int src_linesize[4], dst_linesize[4];
    int src_w = 320, src_h = 240, dst_w, dst_h;
    enum AVPixelFormat src_pix_fmt = AV_PIX_FMT_YUV420P, dst_pix_fmt = AV_PIX_FMT_RGB24;
    const char *dst_size = NULL;
    const char *dst_filename = NULL;
    FILE *dst_file;
    int dst_bufsize;
    struct SwsContext *sws_ctx;
    int i, ret;

    if (argc != 3) {
        FUNC9(stderr, "Usage: %s output_file output_size\n"
                "API example program to show how to scale an image with libswscale.\n"
                "This program generates a series of pictures, rescales them to the given "
                "output_size and saves them to an output file named output_file\n."
                "\n", argv[0]);
        FUNC5(1);
    }
    dst_filename = argv[1];
    dst_size     = argv[2];

    if (FUNC4(&dst_w, &dst_h, dst_size) < 0) {
        FUNC9(stderr,
                "Invalid size '%s', must be in the form WxH or a valid size abbreviation\n",
                dst_size);
        FUNC5(1);
    }

    dst_file = FUNC8(dst_filename, "wb");
    if (!dst_file) {
        FUNC9(stderr, "Could not open destination file %s\n", dst_filename);
        FUNC5(1);
    }

    /* create scaling context */
    sws_ctx = FUNC12(src_w, src_h, src_pix_fmt,
                             dst_w, dst_h, dst_pix_fmt,
                             SWS_BILINEAR, NULL, NULL, NULL);
    if (!sws_ctx) {
        FUNC9(stderr,
                "Impossible to create scale context for the conversion "
                "fmt:%s s:%dx%d -> fmt:%s s:%dx%d\n",
                FUNC2(src_pix_fmt), src_w, src_h,
                FUNC2(dst_pix_fmt), dst_w, dst_h);
        ret = FUNC0(EINVAL);
        goto end;
    }

    /* allocate source and destination image buffers */
    if ((ret = FUNC3(src_data, src_linesize,
                              src_w, src_h, src_pix_fmt, 16)) < 0) {
        FUNC9(stderr, "Could not allocate source image\n");
        goto end;
    }

    /* buffer is going to be written to rawvideo file, no alignment */
    if ((ret = FUNC3(dst_data, dst_linesize,
                              dst_w, dst_h, dst_pix_fmt, 1)) < 0) {
        FUNC9(stderr, "Could not allocate destination image\n");
        goto end;
    }
    dst_bufsize = ret;

    for (i = 0; i < 100; i++) {
        /* generate synthetic video */
        FUNC7(src_data, src_linesize, src_w, src_h, i);

        /* convert to destination format */
        FUNC13(sws_ctx, (const uint8_t * const*)src_data,
                  src_linesize, 0, src_h, dst_data, dst_linesize);

        /* write scaled image to file */
        FUNC10(dst_data[0], 1, dst_bufsize, dst_file);
    }

    FUNC9(stderr, "Scaling succeeded. Play the output file with the command:\n"
           "ffplay -f rawvideo -pix_fmt %s -video_size %dx%d %s\n",
           FUNC2(dst_pix_fmt), dst_w, dst_h, dst_filename);

end:
    FUNC6(dst_file);
    FUNC1(&src_data[0]);
    FUNC1(&dst_data[0]);
    FUNC11(sws_ctx);
    return ret < 0;
}