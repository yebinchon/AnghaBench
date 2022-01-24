#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ebml_master ;
struct TYPE_6__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/ * tags_bc; int /*<<< orphan*/  seekhead; } ;
typedef  TYPE_1__ MatroskaMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  MATROSKA_ID_TAG ; 
 int /*<<< orphan*/  MATROSKA_ID_TAGS ; 
 int /*<<< orphan*/  MATROSKA_ID_TAGTARGETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, uint32_t elementid,
                                 unsigned int uid, ebml_master *tag)
{
    AVIOContext *pb;
    MatroskaMuxContext *mkv = s->priv_data;
    ebml_master targets;
    int ret;

    if (!mkv->tags_bc) {
        ret = FUNC2(mkv->seekhead, MATROSKA_ID_TAGS, FUNC0(s->pb));
        if (ret < 0) return ret;

        FUNC5(s->pb, &mkv->tags_bc, mkv, MATROSKA_ID_TAGS);
    }
    pb = mkv->tags_bc;

    *tag    = FUNC4(pb, MATROSKA_ID_TAG,        0);
    targets = FUNC4(pb, MATROSKA_ID_TAGTARGETS, 0);
    if (elementid)
        FUNC3(pb, elementid, uid);
    FUNC1(pb, targets);
    return 0;
}