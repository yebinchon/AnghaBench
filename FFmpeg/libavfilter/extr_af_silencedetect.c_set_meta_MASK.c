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
typedef  int /*<<< orphan*/  key2 ;
struct TYPE_3__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,...) ; 

__attribute__((used)) static void FUNC2(AVFrame *insamples, int channel, const char *key, char *value)
{
    char key2[128];

    if (channel)
        FUNC1(key2, sizeof(key2), "lavfi.%s.%d", key, channel);
    else
        FUNC1(key2, sizeof(key2), "lavfi.%s", key);
    FUNC0(&insamples->metadata, key2, value, 0);
}