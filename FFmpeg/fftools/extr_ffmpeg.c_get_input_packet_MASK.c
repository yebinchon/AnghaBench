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
typedef  scalar_t__ int64_t ;
struct TYPE_7__ {int nb_streams; int ist_index; int /*<<< orphan*/  ctx; scalar_t__ rate_emu; } ;
struct TYPE_6__ {scalar_t__ start; int /*<<< orphan*/  dts; } ;
typedef  TYPE_1__ InputStream ;
typedef  TYPE_2__ InputFile ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_TIME_BASE ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__** input_streams ; 
 int nb_input_files ; 

__attribute__((used)) static int FUNC5(InputFile *f, AVPacket *pkt)
{
    if (f->rate_emu) {
        int i;
        for (i = 0; i < f->nb_streams; i++) {
            InputStream *ist = input_streams[f->ist_index + i];
            int64_t pts = FUNC3(ist->dts, 1000000, AV_TIME_BASE);
            int64_t now = FUNC1() - ist->start;
            if (pts > now)
                return FUNC0(EAGAIN);
        }
    }

#if HAVE_THREADS
    if (nb_input_files > 1)
        return get_input_packet_mt(f, pkt);
#endif
    return FUNC2(f->ctx, pkt);
}