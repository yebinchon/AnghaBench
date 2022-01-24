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
struct x509_name {size_t num_attr; int /*<<< orphan*/  rid; scalar_t__ ip_len; int /*<<< orphan*/ * ip; int /*<<< orphan*/ * uri; int /*<<< orphan*/ * dns; int /*<<< orphan*/ * alt_email; int /*<<< orphan*/ * email; TYPE_1__* attr; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int /*<<< orphan*/  X509_NAME_ATTR_NOT_USED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct x509_name *name)
{
	size_t i;

	for (i = 0; i < name->num_attr; i++) {
		FUNC0(name->attr[i].value);
		name->attr[i].value = NULL;
		name->attr[i].type = X509_NAME_ATTR_NOT_USED;
	}
	name->num_attr = 0;
	FUNC0(name->email);
	name->email = NULL;

	FUNC0(name->alt_email);
	FUNC0(name->dns);
	FUNC0(name->uri);
	FUNC0(name->ip);
	name->alt_email = name->dns = name->uri = NULL;
	name->ip = NULL;
	name->ip_len = 0;
	FUNC1(&name->rid, 0, sizeof(name->rid));
}