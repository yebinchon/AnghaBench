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
struct TYPE_7__ {unsigned int nb_streams; int /*<<< orphan*/  metadata; struct TYPE_7__* streams; scalar_t__ bsf; struct TYPE_7__* url; } ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {unsigned int nb_files; TYPE_4__* files; scalar_t__ avf; } ;
typedef  TYPE_1__ ConcatContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *avf)
{
    ConcatContext *cat = avf->priv_data;
    unsigned i, j;

    for (i = 0; i < cat->nb_files; i++) {
        FUNC2(&cat->files[i].url);
        for (j = 0; j < cat->files[i].nb_streams; j++) {
            if (cat->files[i].streams[j].bsf)
                FUNC0(&cat->files[i].streams[j].bsf);
        }
        FUNC2(&cat->files[i].streams);
        FUNC1(&cat->files[i].metadata);
    }
    if (cat->avf)
        FUNC3(&cat->avf);
    FUNC2(&cat->files);
    return 0;
}