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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int HashId; } ;
typedef  int /*<<< orphan*/  MD ;
typedef  TYPE_1__ IKE_HASH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  IKE_HASH_MD5_ID 132 
#define  IKE_HASH_SHA1_ID 131 
#define  IKE_HASH_SHA2_256_ID 130 
#define  IKE_HASH_SHA2_384_ID 129 
#define  IKE_HASH_SHA2_512_ID 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

void FUNC5(IKE_HASH *h, void *dst, void *key, UINT key_size, void *data, UINT data_size)
{
	MD *md = NULL;

	switch (h->HashId)
	{
	case IKE_HASH_MD5_ID:
		md = FUNC3("MD5");
		break;
	case IKE_HASH_SHA1_ID:
		md = FUNC3("SHA1");
		break;
	case IKE_HASH_SHA2_256_ID:
		md = FUNC3("SHA256");
		break;
	case IKE_HASH_SHA2_384_ID:
		md = FUNC3("SHA384");
		break;
	case IKE_HASH_SHA2_512_ID:
		md = FUNC3("SHA512");
		break;
	}

	if (md == NULL)
	{
		FUNC0("IkeHMac(): The MD object is NULL! Either NewMd() failed or the current algorithm is not handled by the switch-case block.\n");
		return;
	}

	if (FUNC4(md, key, key_size) == false)
	{
		FUNC0("IkeHMac(): SetMdKey() failed!\n");
		goto cleanup;
	}

	if (FUNC2(md, dst, data, data_size) == 0)
	{
		FUNC0("IkeHMac(): MdProcess() returned 0!\n");
	}

cleanup:
	FUNC1(md);
}