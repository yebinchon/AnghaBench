#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {unsigned int flags; unsigned int len; scalar_t__ pos; int /*<<< orphan*/  tag; } ;
struct TYPE_14__ {TYPE_1__** streams; int /*<<< orphan*/ * pb; TYPE_4__* priv_data; } ;
struct TYPE_13__ {scalar_t__ movi_list; } ;
struct TYPE_12__ {int entry; int ents_allocated; TYPE_7__** cluster; } ;
struct TYPE_11__ {int /*<<< orphan*/  max_size; TYPE_3__ indexes; } ;
struct TYPE_10__ {TYPE_2__* priv_data; } ;
typedef  TYPE_2__ AVIStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVIIndex ;
typedef  int /*<<< orphan*/  AVIIentry ;
typedef  TYPE_4__ AVIContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVI_INDEX_CLUSTER_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_7__* FUNC2 (int) ; 
 TYPE_7__** FUNC3 (TYPE_7__**,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, int stream_index, char *tag,
                          unsigned int flags, unsigned int size)
{
    AVIContext *avi  = s->priv_data;
    AVIOContext *pb  = s->pb;
    AVIStream *avist = s->streams[stream_index]->priv_data;
    AVIIndex *idx    = &avist->indexes;
    int cl           = idx->entry / AVI_INDEX_CLUSTER_SIZE;
    int id           = idx->entry % AVI_INDEX_CLUSTER_SIZE;

    if (idx->ents_allocated <= idx->entry) {
        idx->cluster = FUNC3(idx->cluster, sizeof(void*), cl+1);
        if (!idx->cluster) {
            idx->ents_allocated = 0;
            idx->entry          = 0;
            return FUNC0(ENOMEM);
        }
        idx->cluster[cl] =
            FUNC2(AVI_INDEX_CLUSTER_SIZE * sizeof(AVIIentry));
        if (!idx->cluster[cl])
            return FUNC0(ENOMEM);
        idx->ents_allocated += AVI_INDEX_CLUSTER_SIZE;
    }

    if (tag)
        FUNC5(idx->cluster[cl][id].tag, tag, 4);
    else
        FUNC6(idx->cluster[cl][id].tag, 0, 4);
    idx->cluster[cl][id].flags = flags;
    idx->cluster[cl][id].pos   = FUNC4(pb) - avi->movi_list;
    idx->cluster[cl][id].len   = size;
    avist->max_size = FUNC1(avist->max_size, size);
    idx->entry++;

    return 0;
}