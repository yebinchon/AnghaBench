#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int buffer_size; int pkt_size; } ;
typedef  TYPE_1__ RTSPState ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static AVDictionary *FUNC2(RTSPState *rt)
{
    AVDictionary *opts = NULL;
    char buf[256];

    FUNC1(buf, sizeof(buf), "%d", rt->buffer_size);
    FUNC0(&opts, "buffer_size", buf, 0);
    FUNC1(buf, sizeof(buf), "%d", rt->pkt_size);
    FUNC0(&opts, "pkt_size", buf, 0);

    return opts;
}