#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int int64_t ;
struct TYPE_12__ {int nb_streams; TYPE_4__** streams; } ;
struct TYPE_11__ {int /*<<< orphan*/  metadata; TYPE_1__* codecpar; } ;
struct TYPE_10__ {int size; } ;
struct TYPE_9__ {scalar_t__ trak_index; int found_hdlr_mdta; int /*<<< orphan*/  isom; TYPE_7__* fc; } ;
struct TYPE_8__ {int /*<<< orphan*/  codec_type; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_2__ MOVContext ;
typedef  TYPE_3__ MOVAtom ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_MP2 ; 
 int /*<<< orphan*/  AV_DICT_DONT_OVERWRITE ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ FUNC2 (char,char,char,char) ; 
 scalar_t__ SIZE_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC13(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    uint32_t type;
    uint32_t ctype;
    int64_t title_size;
    char *title_str;
    int ret;

    FUNC8(pb); /* version */
    FUNC9(pb); /* flags */

    /* component type */
    ctype = FUNC11(pb);
    type = FUNC11(pb); /* component subtype */

    FUNC6(c->fc, AV_LOG_TRACE, "ctype=%s\n", FUNC4(ctype));
    FUNC6(c->fc, AV_LOG_TRACE, "stype=%s\n", FUNC4(type));

    if (c->trak_index < 0) {  // meta not inside a trak
        if (type == FUNC2('m','d','t','a')) {
            c->found_hdlr_mdta = 1;
        }
        return 0;
    }

    st = c->fc->streams[c->fc->nb_streams-1];

    if     (type == FUNC2('v','i','d','e'))
        st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    else if (type == FUNC2('s','o','u','n'))
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    else if (type == FUNC2('m','1','a',' '))
        st->codecpar->codec_id = AV_CODEC_ID_MP2;
    else if ((type == FUNC2('s','u','b','p')) || (type == FUNC2('c','l','c','p')))
        st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;

    FUNC10(pb); /* component  manufacture */
    FUNC10(pb); /* component flags */
    FUNC10(pb); /* component flags mask */

    title_size = atom.size - 24;
    if (title_size > 0) {
        if (title_size > FUNC1(INT_MAX, SIZE_MAX-1))
            return AVERROR_INVALIDDATA;
        title_str = FUNC7(title_size + 1); /* Add null terminator */
        if (!title_str)
            return FUNC0(ENOMEM);

        ret = FUNC12(pb, title_str, title_size);
        if (ret < 0) {
            FUNC5(&title_str);
            return ret;
        }
        title_str[title_size] = 0;
        if (title_str[0]) {
            int off = (!c->isom && title_str[0] == title_size - 1);
            // flag added so as to not set stream handler name if already set from mdia->hdlr
            FUNC3(&st->metadata, "handler_name", title_str + off, AV_DICT_DONT_OVERWRITE);
        }
        FUNC5(&title_str);
    }

    return 0;
}