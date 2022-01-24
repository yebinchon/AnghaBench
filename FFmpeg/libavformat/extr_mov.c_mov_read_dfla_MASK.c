#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_11__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_10__ {int /*<<< orphan*/  codecpar; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_8__ {TYPE_6__* fc; } ;
typedef  TYPE_1__ MOVContext ;
typedef  TYPE_2__ MOVAtom ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FLAC_METADATA_TYPE_STREAMINFO ; 
 int FLAC_STREAMINFO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int*,int*) ; 

__attribute__((used)) static int FUNC6(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    int last, type, size, ret;
    uint8_t buf[4];

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];

    if ((uint64_t)atom.size > (1<<30) || atom.size < 42)
        return AVERROR_INVALIDDATA;

    /* Check FlacSpecificBox version. */
    if (FUNC1(pb) != 0)
        return AVERROR_INVALIDDATA;

    FUNC2(pb); /* Flags */

    FUNC3(pb, buf, sizeof(buf));
    FUNC5(buf, &last, &type, &size);

    if (type != FLAC_METADATA_TYPE_STREAMINFO || size != FLAC_STREAMINFO_SIZE) {
        FUNC0(c->fc, AV_LOG_ERROR, "STREAMINFO must be first FLACMetadataBlock\n");
        return AVERROR_INVALIDDATA;
    }

    ret = FUNC4(c->fc, st->codecpar, pb, size);
    if (ret < 0)
        return ret;

    if (!last)
        FUNC0(c->fc, AV_LOG_WARNING, "non-STREAMINFO FLACMetadataBlock(s) ignored\n");

    return 0;
}