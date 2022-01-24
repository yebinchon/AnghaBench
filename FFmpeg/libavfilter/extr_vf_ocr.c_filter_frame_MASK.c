#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  number ;
struct TYPE_12__ {TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_11__ {TYPE_4__* dst; } ;
struct TYPE_10__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; int /*<<< orphan*/ * metadata; } ;
struct TYPE_9__ {int /*<<< orphan*/  tess; } ;
typedef  TYPE_1__ OCRContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_APPEND ; 
 int* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *in)
{
    AVDictionary **metadata = &in->metadata;
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    OCRContext *s = ctx->priv;
    char *result;
    int *confs;

    result = FUNC1(s->tess, in->data[0], 1,
                             in->linesize[0], 0, 0, in->width, in->height);
    confs = FUNC0(s->tess);
    FUNC4(metadata, "lavfi.ocr.text", result, 0);
    for (int i = 0; confs[i] != -1; i++) {
        char number[256];

        FUNC6(number, sizeof(number), "%d ", confs[i]);
        FUNC4(metadata, "lavfi.ocr.confidence", number, AV_DICT_APPEND);
    }

    FUNC3(result);
    FUNC2(confs);

    return FUNC5(outlink, in);
}