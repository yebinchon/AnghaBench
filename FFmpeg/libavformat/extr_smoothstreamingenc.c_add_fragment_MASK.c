#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  n; void* size; void* start_pos; void* duration; void* start_time; int /*<<< orphan*/  infofile; int /*<<< orphan*/  file; } ;
struct TYPE_6__ {int nb_fragments; int fragments_size; int /*<<< orphan*/  fragment_index; TYPE_2__** fragments; } ;
typedef  TYPE_1__ OutputStream ;
typedef  TYPE_2__ Fragment ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (int) ; 
 int FUNC2 (TYPE_2__***,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC4(OutputStream *os, const char *file, const char *infofile, int64_t start_time, int64_t duration, int64_t start_pos, int64_t size)
{
    int err;
    Fragment *frag;
    if (os->nb_fragments >= os->fragments_size) {
        os->fragments_size = (os->fragments_size + 1) * 2;
        if ((err = FUNC2(&os->fragments, sizeof(*os->fragments) *
                               os->fragments_size)) < 0) {
            os->fragments_size = 0;
            os->nb_fragments = 0;
            return err;
        }
    }
    frag = FUNC1(sizeof(*frag));
    if (!frag)
        return FUNC0(ENOMEM);
    FUNC3(frag->file, file, sizeof(frag->file));
    FUNC3(frag->infofile, infofile, sizeof(frag->infofile));
    frag->start_time = start_time;
    frag->duration = duration;
    frag->start_pos = start_pos;
    frag->size = size;
    frag->n = os->fragment_index;
    os->fragments[os->nb_fragments++] = frag;
    os->fragment_index++;
    return 0;
}