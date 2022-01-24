#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filename ;
struct TYPE_10__ {int /*<<< orphan*/  last_ts; } ;
struct TYPE_9__ {char* url; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int nb_streams; scalar_t__ remove_at_exit; TYPE_7__* streams; } ;
typedef  TYPE_1__ HDSContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    HDSContext *c = s->priv_data;
    int i;

    for (i = 0; i < c->nb_streams; i++)
        FUNC0(s, &c->streams[i], 1, c->streams[i].last_ts);
    FUNC5(s, 1);

    if (c->remove_at_exit) {
        char filename[1024];
        FUNC3(filename, sizeof(filename), "%s/index.f4m", s->url);
        FUNC4(filename);
        for (i = 0; i < c->nb_streams; i++) {
            FUNC3(filename, sizeof(filename), "%s/stream%d.abst", s->url, i);
            FUNC4(filename);
        }
        FUNC2(s->url);
    }

    FUNC1(s);
    return 0;
}