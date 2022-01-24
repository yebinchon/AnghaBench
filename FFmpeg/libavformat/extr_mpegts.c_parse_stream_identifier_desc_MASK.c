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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(const uint8_t *p, const uint8_t *p_end)
{
    const uint8_t **pp = &p;
    const uint8_t *desc_list_end;
    const uint8_t *desc_end;
    int desc_list_len;
    int desc_len, desc_tag;

    desc_list_len = FUNC0(pp, p_end);
    if (desc_list_len < 0)
        return -1;
    desc_list_len &= 0xfff;
    desc_list_end  = p + desc_list_len;
    if (desc_list_end > p_end)
        return -1;

    while (1) {
        desc_tag = FUNC1(pp, desc_list_end);
        if (desc_tag < 0)
            return -1;
        desc_len = FUNC1(pp, desc_list_end);
        if (desc_len < 0)
            return -1;
        desc_end = *pp + desc_len;
        if (desc_end > desc_list_end)
            return -1;

        if (desc_tag == 0x52) {
            return FUNC1(pp, desc_end);
        }
        *pp = desc_end;
    }

    return -1;
}