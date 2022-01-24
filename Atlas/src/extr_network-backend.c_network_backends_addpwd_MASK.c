#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t* pwd_table_index; int /*<<< orphan*/ ** pwd_table; int /*<<< orphan*/  raw_pwds; } ;
typedef  TYPE_1__ network_backends_t ;
typedef  size_t gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GString ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int ERR_PWD_DECRYPT ; 
 int ERR_PWD_ENCRYPT ; 
 int PWD_SUCCESS ; 
 int /*<<< orphan*/  copy_pwd ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(network_backends_t *bs, gchar *user, gchar *pwd, gboolean is_encrypt) {
	GString *hashed_password = FUNC10(NULL);
	if (is_encrypt) {
		gchar *decrypt_pwd = FUNC0(pwd);
		if (decrypt_pwd == NULL) {
			FUNC11("failed to decrypt %s\n", pwd);
			return ERR_PWD_DECRYPT;
		}
		FUNC12(hashed_password, decrypt_pwd, FUNC13(decrypt_pwd));
		FUNC3(decrypt_pwd);
		FUNC7(bs->raw_pwds, FUNC9("%s:%s", user, pwd));
	} else {
		gchar *encrypt_pwd = FUNC1(pwd);
		if (encrypt_pwd == NULL) {
			FUNC11("failed to encrypt %s\n", pwd);
			return ERR_PWD_ENCRYPT;
		}
		FUNC7(bs->raw_pwds, FUNC9("%s:%s", user, encrypt_pwd));
		FUNC3(encrypt_pwd);
		FUNC12(hashed_password, pwd, FUNC13(pwd));
	}


	gint index = *(bs->pwd_table_index);
	GHashTable *old_table = bs->pwd_table[index];
	GHashTable *new_table = bs->pwd_table[1-index];
	FUNC6(new_table);
	FUNC4(old_table, copy_pwd, new_table);
	FUNC5(new_table, FUNC8(user), hashed_password);
	FUNC2(bs->pwd_table_index, 1-index);

	return PWD_SUCCESS;
}