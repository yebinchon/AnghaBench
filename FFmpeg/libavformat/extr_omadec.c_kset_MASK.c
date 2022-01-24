#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  const* n_val; int /*<<< orphan*/  const* r_val; } ;
typedef  TYPE_1__ OMAContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, const uint8_t *r_val, const uint8_t *n_val,
                int len)
{
    OMAContext *oc = s->priv_data;

    if (!r_val && !n_val)
        return -1;

    len = FUNC0(len, 16);

    /* use first 64 bits in the third round again */
    if (r_val) {
        if (r_val != oc->r_val) {
            FUNC2(oc->r_val, 0, 24);
            FUNC1(oc->r_val, r_val, len);
        }
        FUNC1(&oc->r_val[16], r_val, 8);
    }
    if (n_val) {
        if (n_val != oc->n_val) {
            FUNC2(oc->n_val, 0, 24);
            FUNC1(oc->n_val, n_val, len);
        }
        FUNC1(&oc->n_val[16], n_val, 8);
    }

    return 0;
}