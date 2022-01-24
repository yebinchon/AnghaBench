#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_14__ {scalar_t__ codec_id; scalar_t__ extradata; scalar_t__ extradata_size; } ;
struct TYPE_13__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_12__ {TYPE_9__* codecpar; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_10__ {TYPE_8__* fc; } ;
typedef  TYPE_1__ MOVContext ;
typedef  TYPE_2__ MOVAtom ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ ALAC_EXTRADATA_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_CODEC_ID_ALAC ; 
 scalar_t__ AV_CODEC_ID_QDM2 ; 
 scalar_t__ AV_CODEC_ID_QDMC ; 
 scalar_t__ AV_CODEC_ID_SPEEX ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC3 (float,char,char,char) ; 
 scalar_t__ FUNC4 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (TYPE_8__*,TYPE_9__*,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__) ; 

__attribute__((used)) static int FUNC13(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    int ret;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];

    if ((uint64_t)atom.size > (1<<30))
        return AVERROR_INVALIDDATA;

    if (st->codecpar->codec_id == AV_CODEC_ID_QDM2 ||
        st->codecpar->codec_id == AV_CODEC_ID_QDMC ||
        st->codecpar->codec_id == AV_CODEC_ID_SPEEX) {
        // pass all frma atom to codec, needed at least for QDMC and QDM2
        FUNC5(&st->codecpar->extradata);
        ret = FUNC10(c->fc, st->codecpar, pb, atom.size);
        if (ret < 0)
            return ret;
    } else if (atom.size > 8) { /* to read frma, esds atoms */
        if (st->codecpar->codec_id == AV_CODEC_ID_ALAC && atom.size >= 24) {
            uint64_t buffer;
            ret = FUNC11(pb, 8);
            if (ret < 0)
                return ret;
            buffer = FUNC7(pb);
            atom.size -= 8;
            if (  (buffer & 0xFFFFFFFF) == FUNC3('f','r','m','a')
                && buffer >> 32 <= atom.size
                && buffer >> 32 >= 8) {
                FUNC9(pb, -8);
                atom.size += 8;
            } else if (!st->codecpar->extradata_size) {
#define ALAC_EXTRADATA_SIZE 36
                st->codecpar->extradata = FUNC6(ALAC_EXTRADATA_SIZE + AV_INPUT_BUFFER_PADDING_SIZE);
                if (!st->codecpar->extradata)
                    return FUNC0(ENOMEM);
                st->codecpar->extradata_size = ALAC_EXTRADATA_SIZE;
                FUNC1(st->codecpar->extradata    , ALAC_EXTRADATA_SIZE);
                FUNC1(st->codecpar->extradata + 4, FUNC4('a','l','a','c'));
                FUNC2(st->codecpar->extradata + 12, buffer);
                FUNC8(pb, st->codecpar->extradata + 20, 16);
                FUNC9(pb, atom.size - 24);
                return 0;
            }
        }
        if ((ret = FUNC12(c, pb, atom)) < 0)
            return ret;
    } else
        FUNC9(pb, atom.size);
    return 0;
}