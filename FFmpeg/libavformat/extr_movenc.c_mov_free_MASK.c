#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct eac3_info {scalar_t__ tag; int /*<<< orphan*/  cenc; struct eac3_info* vos_data; scalar_t__ vos_len; struct eac3_info* eac3_priv; int /*<<< orphan*/  pkt; int /*<<< orphan*/  cover_image; struct eac3_info* frag_info; struct eac3_info* cluster; struct eac3_info* par; struct eac3_info* extradata; } ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int chapter_track; int nb_streams; struct eac3_info* tracks; scalar_t__ nb_meta_tmcd; } ;
typedef  TYPE_1__ MOVMuxContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (struct eac3_info**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct eac3_info*) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s)
{
    MOVMuxContext *mov = s->priv_data;
    int i;

    if (mov->chapter_track) {
        if (mov->tracks[mov->chapter_track].par)
            FUNC1(&mov->tracks[mov->chapter_track].par->extradata);
        FUNC1(&mov->tracks[mov->chapter_track].par);
    }

    for (i = 0; i < mov->nb_streams; i++) {
        if (mov->tracks[i].tag == FUNC0('r','t','p',' '))
            FUNC4(&mov->tracks[i]);
        else if (mov->tracks[i].tag == FUNC0('t','m','c','d') && mov->nb_meta_tmcd)
            FUNC1(&mov->tracks[i].par);
        FUNC1(&mov->tracks[i].cluster);
        FUNC1(&mov->tracks[i].frag_info);
        FUNC2(&mov->tracks[i].cover_image);

        if (mov->tracks[i].eac3_priv) {
            struct eac3_info *info = mov->tracks[i].eac3_priv;
            FUNC2(&info->pkt);
            FUNC1(&mov->tracks[i].eac3_priv);
        }
        if (mov->tracks[i].vos_len)
            FUNC1(&mov->tracks[i].vos_data);

        FUNC3(&mov->tracks[i].cenc);
    }

    FUNC1(&mov->tracks);
}