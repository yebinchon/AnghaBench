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
struct hci_link {int dummy; } ;

/* Variables and functions */
 struct hci_link* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hci_links ; 
 int /*<<< orphan*/  FUNC1 (struct hci_link*,int /*<<< orphan*/ ,int) ; 

struct hci_link* FUNC2(void)
{
	struct hci_link *link;

	link = FUNC0(&hci_links);
	if(link==NULL) return NULL;

	FUNC1(link,0,sizeof(struct hci_link));
	return link;
}