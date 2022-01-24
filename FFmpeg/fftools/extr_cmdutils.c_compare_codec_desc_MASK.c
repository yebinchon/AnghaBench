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
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ AVCodecDescriptor ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const void *a, const void *b)
{
    const AVCodecDescriptor * const *da = a;
    const AVCodecDescriptor * const *db = b;

    return (*da)->type != (*db)->type ? FUNC0((*da)->type, (*db)->type) :
           FUNC1((*da)->name, (*db)->name);
}