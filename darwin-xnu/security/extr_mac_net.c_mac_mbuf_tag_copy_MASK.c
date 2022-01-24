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
struct m_tag {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct label*,struct label*) ; 
 int /*<<< orphan*/  mbuf_label_copy ; 

void
FUNC1(struct m_tag *src, struct m_tag *dest)
{
	struct label *src_label, *dest_label;

	src_label = (struct label *)(src + 1);
	dest_label = (struct label *)(dest + 1);

	if (src_label == NULL || dest_label == NULL)
		return;

	/*
	 * mac_mbuf_tag_init() is called on the target tag
	 * in m_tag_copy(), so we don't need to call it here.
	 */
	FUNC0(mbuf_label_copy, src_label, dest_label);

	return;
}