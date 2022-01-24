#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_18__ {TYPE_1__* opaque; } ;
struct TYPE_17__ {int format; } ;
struct TYPE_16__ {int hwaccel_output_format; } ;
typedef  TYPE_1__ InputStream ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 () ; 
 int FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, AVFrame *input)
{
    InputStream *ist = avctx->opaque;
    AVFrame *output = NULL;
    enum AVPixelFormat output_format = ist->hwaccel_output_format;
    int err;

    if (input->format == output_format) {
        // Nothing to do.
        return 0;
    }

    output = FUNC1();
    if (!output)
        return FUNC0(ENOMEM);

    output->format = output_format;

    err = FUNC6(output, input, 0);
    if (err < 0) {
        FUNC7(avctx, AV_LOG_ERROR, "Failed to transfer data to "
               "output frame: %d.\n", err);
        goto fail;
    }

    err = FUNC2(output, input);
    if (err < 0) {
        FUNC5(output);
        goto fail;
    }

    FUNC5(input);
    FUNC4(input, output);
    FUNC3(&output);

    return 0;

fail:
    FUNC3(&output);
    return err;
}