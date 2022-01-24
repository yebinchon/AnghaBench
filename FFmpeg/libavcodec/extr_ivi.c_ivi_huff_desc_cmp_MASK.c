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
struct TYPE_4__ {scalar_t__ num_rows; int /*<<< orphan*/  xbits; } ;
typedef  TYPE_1__ IVIHuffDesc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC1(const IVIHuffDesc *desc1,
                             const IVIHuffDesc *desc2)
{
    return desc1->num_rows != desc2->num_rows ||
           FUNC0(desc1->xbits, desc2->xbits, desc1->num_rows);
}