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
typedef  int uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, int64_t pos_limit) {
    AVIOContext *pb = s->pb;
    uint32_t tag = 0;
    while(!FUNC1(pb) && FUNC4(pb) < pos_limit) {
        tag = (tag << 8) | FUNC2(pb);
        if (tag                  == FUNC0('R','T','j','j') &&
           (tag = FUNC3(pb)) == FUNC0('j','j','j','j') &&
           (tag = FUNC3(pb)) == FUNC0('j','j','j','j'))
            return 1;
    }
    return 0;
}