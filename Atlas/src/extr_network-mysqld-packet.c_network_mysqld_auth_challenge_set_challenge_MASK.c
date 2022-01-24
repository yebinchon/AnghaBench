#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* challenge; } ;
typedef  TYPE_1__ network_mysqld_auth_challenge ;
typedef  int guint ;
struct TYPE_5__ {double* str; int len; } ;

/* Variables and functions */
 double RAND_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 double FUNC1 () ; 

void FUNC2(network_mysqld_auth_challenge *shake) {
	guint i;

	/* 20 chars */

	FUNC0(shake->challenge, 21);

	for (i = 0; i < 20; i++) {
		shake->challenge->str[i] = (94.0 * (FUNC1() / (RAND_MAX + 1.0))) + 33; /* 33 - 127 are printable characters */
	}

	shake->challenge->len = 20;
	shake->challenge->str[shake->challenge->len] = '\0';
}