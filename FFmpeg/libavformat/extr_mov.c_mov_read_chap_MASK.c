#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  eof_reached; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_8__ {unsigned int nb_chapter_tracks; int /*<<< orphan*/ * chapter_tracks; } ;
typedef  TYPE_1__ MOVContext ;
typedef  TYPE_2__ MOVAtom ;
typedef  TYPE_3__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    unsigned i, num;
    void *new_tracks;

    num = atom.size / 4;
    if (!(new_tracks = FUNC2(num, sizeof(int))))
        return FUNC0(ENOMEM);

    FUNC1(c->chapter_tracks);
    c->chapter_tracks = new_tracks;
    c->nb_chapter_tracks = num;

    for (i = 0; i < num && !pb->eof_reached; i++)
        c->chapter_tracks[i] = FUNC3(pb);

    return 0;
}