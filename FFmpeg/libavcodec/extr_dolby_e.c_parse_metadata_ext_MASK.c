#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ mtd_ext_size; scalar_t__ key_present; } ;
typedef  TYPE_1__ DBEContext ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC1(DBEContext *s)
{
    if (s->mtd_ext_size)
        return FUNC0(s, s->key_present + s->mtd_ext_size + 1);
    return 0;
}