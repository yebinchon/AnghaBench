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
typedef  int /*<<< orphan*/  network_mysqld_type_t ;
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(GString *packet, network_mysqld_type_t *type) {
	const char *s;
	gsize s_len;
	int err = 0;

	err = err || FUNC1(type, &s, &s_len);
	err = err || FUNC0(packet, s, s_len);

	return err ? -1 : 0;
}