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
typedef  int /*<<< orphan*/  filename ;
struct TYPE_7__ {char* url; TYPE_1__* priv_data; } ;
struct TYPE_6__ {scalar_t__ remove_at_exit; } ;
typedef  TYPE_1__ SmoothStreamingContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s)
{
    SmoothStreamingContext *c = s->priv_data;
    FUNC0(s, 1);

    if (c->remove_at_exit) {
        char filename[1024];
        FUNC3(filename, sizeof(filename), "%s/Manifest", s->url);
        FUNC4(filename);
        FUNC2(s->url);
    }

    FUNC1(s);
    return 0;
}