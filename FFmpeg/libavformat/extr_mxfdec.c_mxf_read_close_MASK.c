#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* offsets; struct TYPE_10__* fake_index; struct TYPE_10__* ptses; struct TYPE_10__* segments; } ;
struct TYPE_9__ {int nb_streams; TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int metadata_sets_count; int nb_index_tables; TYPE_5__* index_tables; TYPE_5__* local_tags; TYPE_5__* aesc; TYPE_5__* metadata_sets; TYPE_5__* partitions; TYPE_5__* essence_container_data_refs; TYPE_5__* packages_refs; } ;
struct TYPE_7__ {int /*<<< orphan*/ * priv_data; } ;
typedef  TYPE_2__ MXFContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 

__attribute__((used)) static int FUNC2(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    int i;

    FUNC0(&mxf->packages_refs);
    FUNC0(&mxf->essence_container_data_refs);

    for (i = 0; i < s->nb_streams; i++)
        s->streams[i]->priv_data = NULL;

    for (i = 0; i < mxf->metadata_sets_count; i++) {
        FUNC1(mxf->metadata_sets + i, 1);
    }
    FUNC0(&mxf->partitions);
    FUNC0(&mxf->metadata_sets);
    FUNC0(&mxf->aesc);
    FUNC0(&mxf->local_tags);

    if (mxf->index_tables) {
        for (i = 0; i < mxf->nb_index_tables; i++) {
            FUNC0(&mxf->index_tables[i].segments);
            FUNC0(&mxf->index_tables[i].ptses);
            FUNC0(&mxf->index_tables[i].fake_index);
            FUNC0(&mxf->index_tables[i].offsets);
        }
    }
    FUNC0(&mxf->index_tables);

    return 0;
}