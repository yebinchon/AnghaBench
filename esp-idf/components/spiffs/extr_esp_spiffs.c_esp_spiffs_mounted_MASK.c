#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__** _efs ; 
 scalar_t__ FUNC1 (char const*,int*) ; 

bool FUNC2(const char* partition_label)
{
    int index;
    if (FUNC1(partition_label, &index) != ESP_OK) {
        return false;
    }
    return (FUNC0(_efs[index]->fs));
}