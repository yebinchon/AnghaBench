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
struct aes_key_st {int dummy; } ;
typedef  int UINT ;
struct TYPE_3__ {int KeySize; void* DecryptKey; void* EncryptKey; int /*<<< orphan*/  KeyValue; } ;
typedef  TYPE_1__ AES_KEY_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC3 (int) ; 

AES_KEY_VALUE *FUNC4(void *data, UINT size)
{
	AES_KEY_VALUE *k;
	// Validate arguments
	if (data == NULL || (!(size == 16 || size == 24 || size == 32)))
	{
		return NULL;
	}

	k = FUNC3(sizeof(AES_KEY_VALUE));

	k->EncryptKey = FUNC3(sizeof(struct aes_key_st));
	k->DecryptKey = FUNC3(sizeof(struct aes_key_st));

	k->KeySize = size;
	FUNC2(k->KeyValue, data, size);

	FUNC1(data, size * 8, k->EncryptKey);
	FUNC0(data, size * 8, k->DecryptKey);

	return k;
}