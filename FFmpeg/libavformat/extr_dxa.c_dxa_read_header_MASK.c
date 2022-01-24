#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int int64_t ;
typedef  int int32_t ;
struct TYPE_14__ {scalar_t__ sample_rate; int block_align; int width; int height; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_13__ {int duration; scalar_t__ start_time; TYPE_1__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_12__ {TYPE_5__* codecpar; } ;
struct TYPE_11__ {scalar_t__ frames; int has_sound; scalar_t__ vidpos; int bpc; int readvid; scalar_t__ wavpos; scalar_t__ bytes_left; } ;
typedef  TYPE_1__ DXAContext ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_DXA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_TIME_BASE ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int,int,unsigned long) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int,int) ; 
 int FUNC14 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_5__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    DXAContext *c = s->priv_data;
    AVStream *st, *ast;
    uint32_t tag;
    int32_t fps;
    int w, h;
    int num, den;
    int flags;
    int ret;

    tag = FUNC9(pb);
    if (tag != FUNC1('D', 'E', 'X', 'A'))
        return AVERROR_INVALIDDATA;
    flags = FUNC6(pb);
    c->frames = FUNC7(pb);
    if(!c->frames){
        FUNC2(s, AV_LOG_ERROR, "File contains no frames ???\n");
        return AVERROR_INVALIDDATA;
    }

    fps = FUNC8(pb);
    if(fps > 0){
        den = 1000;
        num = fps;
    }else if (fps < 0){
        den = 100000;
        num = -fps;
    }else{
        den = 10;
        num = 1;
    }
    w = FUNC7(pb);
    h = FUNC7(pb);
    c->has_sound = 0;

    st = FUNC4(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    // Parse WAV data header
    if(FUNC9(pb) == FUNC1('W', 'A', 'V', 'E')){
        uint32_t size, fsize;
        c->has_sound = 1;
        size = FUNC8(pb);
        c->vidpos = FUNC12(pb) + size;
        FUNC11(pb, 16);
        fsize = FUNC9(pb);

        ast = FUNC4(s, NULL);
        if (!ast)
            return FUNC0(ENOMEM);
        ret = FUNC14(s, pb, ast->codecpar, fsize, 0);
        if (ret < 0)
            return ret;
        if (ast->codecpar->sample_rate > 0)
            FUNC13(ast, 64, 1, ast->codecpar->sample_rate);
        // find 'data' chunk
        while(FUNC12(pb) < c->vidpos && !FUNC5(pb)){
            tag = FUNC9(pb);
            fsize = FUNC9(pb);
            if(tag == FUNC1('d', 'a', 't', 'a')) break;
            FUNC11(pb, fsize);
        }
        c->bpc = (fsize + c->frames - 1) / c->frames;
        if(ast->codecpar->block_align)
            c->bpc = ((c->bpc + ast->codecpar->block_align - 1) / ast->codecpar->block_align) * ast->codecpar->block_align;
        c->bytes_left = fsize;
        c->wavpos = FUNC12(pb);
        FUNC10(pb, c->vidpos, SEEK_SET);
    }

    /* now we are ready: build format streams */
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id   = AV_CODEC_ID_DXA;
    st->codecpar->width      = w;
    st->codecpar->height     = h;
    FUNC3(&den, &num, den, num, (1UL<<31)-1);
    FUNC13(st, 33, num, den);
    /* flags & 0x80 means that image is interlaced,
     * flags & 0x40 means that image has double height
     * either way set true height
     */
    if(flags & 0xC0){
        st->codecpar->height >>= 1;
    }
    c->readvid = !c->has_sound;
    c->vidpos  = FUNC12(pb);
    s->start_time = 0;
    s->duration = (int64_t)c->frames * AV_TIME_BASE * num / den;
    FUNC2(s, AV_LOG_DEBUG, "%d frame(s)\n",c->frames);

    return 0;
}