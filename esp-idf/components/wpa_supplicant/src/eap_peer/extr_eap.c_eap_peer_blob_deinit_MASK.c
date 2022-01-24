#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_config_blob {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ca_cert; int /*<<< orphan*/ * private_key; int /*<<< orphan*/ * client_cert; } ;
struct eap_sm {TYPE_1__ config; TYPE_2__* blob; } ;
struct TYPE_4__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int BLOB_NUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct eap_sm *sm)
{
	int i;
	for (i = 0; i < BLOB_NUM; i++) {
		if (sm->blob[i].name) {
			FUNC1(sm->blob[i].name);
			sm->blob[i].name = NULL;
		}
	}
	FUNC0(&sm->blob[0], sizeof(struct wpa_config_blob)*BLOB_NUM);

	sm->config.client_cert = NULL;
	sm->config.private_key = NULL;
	sm->config.ca_cert = NULL;
}