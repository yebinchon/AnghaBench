#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* int64_t ;
struct TYPE_11__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_10__ {int /*<<< orphan*/  metadata; void* duration; TYPE_1__* priv_data; } ;
struct TYPE_9__ {TYPE_5__* fc; } ;
struct TYPE_8__ {int time_scale; } ;
typedef  TYPE_1__ MOVStreamContext ;
typedef  TYPE_2__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*,int) ; 
 scalar_t__ FUNC8 (unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,TYPE_5__*) ; 

__attribute__((used)) static int FUNC10(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    MOVStreamContext *sc;
    int version;
    char language[4] = {0};
    unsigned lang;
    int64_t creation_time;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];
    sc = st->priv_data;

    if (sc->time_scale) {
        FUNC1(c->fc, AV_LOG_ERROR, "Multiple mdhd?\n");
        return AVERROR_INVALIDDATA;
    }

    version = FUNC2(pb);
    if (version > 1) {
        FUNC7(c->fc, "Version %d", version);
        return AVERROR_PATCHWELCOME;
    }
    FUNC4(pb); /* flags */
    if (version == 1) {
        creation_time = FUNC6(pb);
        FUNC6(pb);
    } else {
        creation_time = FUNC5(pb);
        FUNC5(pb); /* modification time */
    }
    FUNC9(&st->metadata, creation_time, c->fc);

    sc->time_scale = FUNC5(pb);
    if (sc->time_scale <= 0) {
        FUNC1(c->fc, AV_LOG_ERROR, "Invalid mdhd time scale %d, defaulting to 1\n", sc->time_scale);
        sc->time_scale = 1;
    }
    st->duration = (version == 1) ? FUNC6(pb) : FUNC5(pb); /* duration */

    lang = FUNC3(pb); /* language */
    if (FUNC8(lang, language))
        FUNC0(&st->metadata, "language", language, 0);
    FUNC3(pb); /* quality */

    return 0;
}