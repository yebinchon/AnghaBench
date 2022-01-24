#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  default_file; TYPE_6__* raw_pwds; TYPE_6__* raw_ips; int /*<<< orphan*/  backends_mutex; TYPE_6__* backends; } ;
typedef  TYPE_3__ network_backends_t ;
struct TYPE_21__ {scalar_t__ type; TYPE_2__* addr; } ;
typedef  TYPE_4__ network_backend_t ;
typedef  scalar_t__ guint ;
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_24__ {int /*<<< orphan*/  message; } ;
struct TYPE_23__ {scalar_t__ len; } ;
struct TYPE_22__ {scalar_t__ len; char* str; } ;
struct TYPE_19__ {TYPE_1__* name; } ;
struct TYPE_18__ {int /*<<< orphan*/ * str; } ;
typedef  TYPE_5__ GString ;
typedef  TYPE_6__ GPtrArray ;
typedef  int /*<<< orphan*/  GKeyFile ;
typedef  TYPE_7__ GError ;

/* Variables and functions */
 scalar_t__ BACKEND_TYPE_RO ; 
 scalar_t__ BACKEND_TYPE_RW ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  G_KEY_FILE_KEEP_COMMENTS ; 
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__**) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,char) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(network_backends_t *bs) {
	GKeyFile *keyfile = FUNC6();
	FUNC7(keyfile, ',');
	GError *gerr = NULL;

	if (FALSE == FUNC5(keyfile, bs->default_file, G_KEY_FILE_KEEP_COMMENTS, &gerr)) {
		FUNC0("%s: g_key_file_load_from_file: %s", G_STRLOC, gerr->message);
		FUNC1(gerr);
		FUNC4(keyfile);
		return -1;
	}

	GString *master = FUNC18(NULL);
	GString *slave  = FUNC18(NULL);
	guint i;
	GPtrArray *backends = bs->backends;

	FUNC11(bs->backends_mutex);
	guint len = backends->len;
	for (i = 0; i < len; ++i) {
		network_backend_t *backend = FUNC13(backends, i);
		if (backend->type == BACKEND_TYPE_RW) {
			FUNC16(master, ",%s", backend->addr->name->str);
		} else if (backend->type == BACKEND_TYPE_RO) {
			FUNC16(slave, ",%s", backend->addr->name->str);
		}
	}
	FUNC12(bs->backends_mutex);

	if (master->len != 0) {
		FUNC8(keyfile, "mysql-proxy", "proxy-backend-addresses", master->str+1);
	} else {
		FUNC8(keyfile, "mysql-proxy", "proxy-backend-addresses", "");
	}
	if (slave->len != 0) {
		FUNC8(keyfile, "mysql-proxy", "proxy-read-only-backend-addresses", slave->str+1);
	} else {
		FUNC8(keyfile, "mysql-proxy", "proxy-read-only-backend-addresses", "");
	}

	FUNC17(master, TRUE);
	FUNC17(slave, TRUE);

	GString *client_ips = FUNC18(NULL);
	for (i = 0; i < bs->raw_ips->len; ++i) {
		gchar *client_ip = FUNC13(bs->raw_ips, i);
		FUNC16(client_ips, ",%s", client_ip);
	}
	if (client_ips->len != 0) {
		FUNC8(keyfile, "mysql-proxy", "client-ips", client_ips->str+1);
	} else {
		FUNC8(keyfile, "mysql-proxy", "client-ips", "");
	}
	FUNC17(client_ips, TRUE);

	GString *pwds = FUNC18(NULL);
	for (i = 0; i < bs->raw_pwds->len; ++i) {
		FUNC15(pwds, ',');
		gchar *user_pwd = FUNC13(bs->raw_pwds, i);
		FUNC14(pwds, user_pwd);
	}
	if (pwds->len != 0) {
		FUNC8(keyfile, "mysql-proxy", "pwds", pwds->str+1);
	} else {
		FUNC8(keyfile, "mysql-proxy", "pwds", "");
	}
	FUNC17(pwds, TRUE);

	gsize file_size = 0;
	gchar *file_buf = FUNC9(keyfile, &file_size, NULL);
	if (FALSE == FUNC2(bs->default_file, file_buf, file_size, &gerr)) {
		FUNC0("%s: g_file_set_contents: %s", G_STRLOC, gerr->message);
		FUNC3(file_buf);
		FUNC1(gerr);
		FUNC4(keyfile);
		return -1;
	}

	FUNC10("%s: saving config file succeed", G_STRLOC);
	FUNC3(file_buf);
	FUNC4(keyfile);
	return 0;
}