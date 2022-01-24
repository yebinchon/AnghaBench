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
typedef  char uint8_t ;
struct AVMD5 {int dummy; } ;
typedef  int /*<<< orphan*/  errstr ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVFilterGraph ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 float FRAME_SIZE ; 
 float INPUT_SAMPLERATE ; 
 float FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct AVMD5**) ; 
 struct AVMD5* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC14 (struct AVMD5*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC15(int argc, char *argv[])
{
    struct AVMD5 *md5;
    AVFilterGraph *graph;
    AVFilterContext *src, *sink;
    AVFrame *frame;
    uint8_t errstr[1024];
    float duration;
    int err, nb_frames, i;

    if (argc < 2) {
        FUNC11(stderr, "Usage: %s <duration>\n", argv[0]);
        return 1;
    }

    duration  = FUNC1(argv[1]);
    nb_frames = duration * INPUT_SAMPLERATE / FRAME_SIZE;
    if (nb_frames <= 0) {
        FUNC11(stderr, "Invalid duration: %s\n", argv[1]);
        return 1;
    }

    /* Allocate the frame we will be using to store the data. */
    frame  = FUNC4();
    if (!frame) {
        FUNC11(stderr, "Error allocating the frame\n");
        return 1;
    }

    md5 = FUNC8();
    if (!md5) {
        FUNC11(stderr, "Error allocating the MD5 context\n");
        return 1;
    }

    /* Set up the filtergraph. */
    err = FUNC13(&graph, &src, &sink);
    if (err < 0) {
        FUNC11(stderr, "Unable to init filter graph:");
        goto fail;
    }

    /* the main filtering loop */
    for (i = 0; i < nb_frames; i++) {
        /* get an input frame to be filtered */
        err = FUNC12(frame, i);
        if (err < 0) {
            FUNC11(stderr, "Error generating input frame:");
            goto fail;
        }

        /* Send the frame to the input of the filtergraph. */
        err = FUNC3(src, frame);
        if (err < 0) {
            FUNC6(frame);
            FUNC11(stderr, "Error submitting the frame to the filtergraph:");
            goto fail;
        }

        /* Get all the filtered output that is available. */
        while ((err = FUNC2(sink, frame)) >= 0) {
            /* now do something with our filtered frame */
            err = FUNC14(md5, frame);
            if (err < 0) {
                FUNC11(stderr, "Error processing the filtered frame:");
                goto fail;
            }
            FUNC6(frame);
        }

        if (err == FUNC0(EAGAIN)) {
            /* Need to feed more frames in. */
            continue;
        } else if (err == AVERROR_EOF) {
            /* Nothing more to do, finish. */
            break;
        } else if (err < 0) {
            /* An error occurred. */
            FUNC11(stderr, "Error filtering the data:");
            goto fail;
        }
    }

    FUNC10(&graph);
    FUNC5(&frame);
    FUNC7(&md5);

    return 0;

fail:
    FUNC9(err, errstr, sizeof(errstr));
    FUNC11(stderr, "%s\n", errstr);
    return 1;
}