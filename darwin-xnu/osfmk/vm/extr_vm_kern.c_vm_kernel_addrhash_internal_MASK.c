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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  salt ;
typedef  int /*<<< orphan*/  addr ;
typedef  int /*<<< orphan*/  SHA256_CTX ;

/* Variables and functions */
 int SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(
	vm_offset_t addr,
	vm_offset_t *hash_addr,
	uint64_t salt)
{
	FUNC5(salt != 0);

	if (addr == 0) {
		*hash_addr = 0;
		return;
	}

	if (FUNC3(addr)) {
		*hash_addr = FUNC4(addr);
		return;
	}

	vm_offset_t sha_digest[SHA256_DIGEST_LENGTH/sizeof(vm_offset_t)];
	SHA256_CTX sha_ctx;

	FUNC1(&sha_ctx);
	FUNC2(&sha_ctx, &salt, sizeof(salt));
	FUNC2(&sha_ctx, &addr, sizeof(addr));
	FUNC0(sha_digest, &sha_ctx);

	*hash_addr = sha_digest[0];
}