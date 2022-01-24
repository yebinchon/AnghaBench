#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int const) ; 

__attribute__((used)) static int FUNC1(PutBitContext *p, int table_class, int table_id,
                             const uint8_t *bits_table, const uint8_t *value_table)
{
    int n, i;

    FUNC0(p, 4, table_class);
    FUNC0(p, 4, table_id);

    n = 0;
    for(i=1;i<=16;i++) {
        n += bits_table[i];
        FUNC0(p, 8, bits_table[i]);
    }

    for(i=0;i<n;i++)
        FUNC0(p, 8, value_table[i]);

    return n + 17;
}