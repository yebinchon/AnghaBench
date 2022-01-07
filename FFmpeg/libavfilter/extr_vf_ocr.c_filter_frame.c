
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int number ;
struct TYPE_12__ {TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_11__ {TYPE_4__* dst; } ;
struct TYPE_10__ {int height; int width; int * linesize; int * data; int * metadata; } ;
struct TYPE_9__ {int tess; } ;
typedef TYPE_1__ OCRContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;
typedef int AVDictionary ;


 int AV_DICT_APPEND ;
 int* TessBaseAPIAllWordConfidences (int ) ;
 char* TessBaseAPIRect (int ,int ,int,int ,int ,int ,int ,int ) ;
 int TessDeleteIntArray (int*) ;
 int TessDeleteText (char*) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVDictionary **metadata = &in->metadata;
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    OCRContext *s = ctx->priv;
    char *result;
    int *confs;

    result = TessBaseAPIRect(s->tess, in->data[0], 1,
                             in->linesize[0], 0, 0, in->width, in->height);
    confs = TessBaseAPIAllWordConfidences(s->tess);
    av_dict_set(metadata, "lavfi.ocr.text", result, 0);
    for (int i = 0; confs[i] != -1; i++) {
        char number[256];

        snprintf(number, sizeof(number), "%d ", confs[i]);
        av_dict_set(metadata, "lavfi.ocr.confidence", number, AV_DICT_APPEND);
    }

    TessDeleteText(result);
    TessDeleteIntArray(confs);

    return ff_filter_frame(outlink, in);
}
