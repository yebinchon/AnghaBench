#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* entries; } ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {TYPE_4__* tracks; TYPE_4__* attachments; TYPE_4__* cues; TYPE_4__* seekhead; int /*<<< orphan*/  tags_bc; int /*<<< orphan*/  tracks_bc; int /*<<< orphan*/  info_bc; int /*<<< orphan*/  cluster_bc; } ;
typedef  TYPE_1__ MatroskaMuxContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(AVFormatContext *s)
{
    MatroskaMuxContext *mkv = s->priv_data;

    FUNC1(&mkv->cluster_bc);
    FUNC1(&mkv->info_bc);
    FUNC1(&mkv->tracks_bc);
    FUNC1(&mkv->tags_bc);

    if (mkv->seekhead) {
        FUNC0(&mkv->seekhead->entries);
        FUNC0(&mkv->seekhead);
    }
    if (mkv->cues) {
        FUNC0(&mkv->cues->entries);
        FUNC0(&mkv->cues);
    }
    if (mkv->attachments) {
        FUNC0(&mkv->attachments->entries);
        FUNC0(&mkv->attachments);
    }
    FUNC0(&mkv->tracks);
}