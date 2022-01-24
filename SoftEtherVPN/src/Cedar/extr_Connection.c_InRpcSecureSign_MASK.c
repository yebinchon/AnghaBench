#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* BitmapId; void* UseSecureDeviceId; int /*<<< orphan*/  Signature; int /*<<< orphan*/  Random; int /*<<< orphan*/  ClientCert; int /*<<< orphan*/  SecurePrivateKeyName; int /*<<< orphan*/  SecurePublicCertName; } ;
typedef  TYPE_1__ SECURE_SIGN ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(SECURE_SIGN *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(t, sizeof(SECURE_SIGN));
	FUNC2(p, "SecurePublicCertName", t->SecurePublicCertName, sizeof(t->SecurePublicCertName));
	FUNC2(p, "SecurePrivateKeyName", t->SecurePrivateKeyName, sizeof(t->SecurePrivateKeyName));
	t->ClientCert = FUNC3(p, "ClientCert");
	FUNC0(p, "Random", t->Random, sizeof(t->Random));
	FUNC0(p, "Signature", t->Signature, sizeof(t->Signature));
	t->UseSecureDeviceId = FUNC1(p, "UseSecureDeviceId");
	t->BitmapId = FUNC1(p, "BitmapId");
}