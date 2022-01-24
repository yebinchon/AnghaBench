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
struct TYPE_10__ {int nb_streams; TYPE_2__** streams; } ;
struct TYPE_9__ {scalar_t__ id; int index; int /*<<< orphan*/  first_dts; } ;
struct TYPE_8__ {int nb_rmst; int /*<<< orphan*/ * rmst; int /*<<< orphan*/  mlti_data_size; int /*<<< orphan*/  mlti_data; } ;
typedef  TYPE_1__ PayloadContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC3 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int
FUNC8 (AVFormatContext *s, int st_index,
                    PayloadContext *rdt, const char *line)
{
    AVStream *stream = s->streams[st_index];
    const char *p = line;

    if (FUNC3(p, "OpaqueData:buffer;", &p)) {
        rdt->mlti_data = FUNC7(&rdt->mlti_data_size, p);
    } else if (FUNC3(p, "StartTime:integer;", &p))
        stream->first_dts = FUNC1(p);
    else if (FUNC3(p, "ASMRuleBook:string;", &p)) {
        int n, first = -1;

        for (n = 0; n < s->nb_streams; n++)
            if (s->streams[n]->id == stream->id) {
                int count = s->streams[n]->index + 1, err;
                if (first == -1) first = n;
                if (rdt->nb_rmst < count) {
                    if ((err = FUNC2(&rdt->rmst,
                                           count * sizeof(*rdt->rmst))) < 0) {
                        rdt->nb_rmst = 0;
                        return err;
                    }
                    FUNC5(rdt->rmst + rdt->nb_rmst, 0,
                           (count - rdt->nb_rmst) * sizeof(*rdt->rmst));
                    rdt->nb_rmst = count;
                }
                rdt->rmst[s->streams[n]->index] = FUNC4();
                if (!rdt->rmst[s->streams[n]->index])
                    return FUNC0(ENOMEM);
                FUNC6(rdt, s->streams[n], (n - first) * 2);
           }
    }

    return 0;
}