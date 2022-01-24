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
struct TYPE_3__ {int /*<<< orphan*/  BitmapId; int /*<<< orphan*/  UseSecureDeviceId; int /*<<< orphan*/  Signature; int /*<<< orphan*/  Random; int /*<<< orphan*/  ClientCert; int /*<<< orphan*/  SecurePrivateKeyName; int /*<<< orphan*/  SecurePublicCertName; } ;
typedef  TYPE_1__ SECURE_SIGN ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC4(PACK *p, SECURE_SIGN *t)
{
	// Validate arguments
	if (p == NULL || t == NULL)
	{
		return;
	}

	FUNC2(p, "SecurePublicCertName", t->SecurePublicCertName);
	FUNC2(p, "SecurePrivateKeyName", t->SecurePrivateKeyName);
	FUNC3(p, "ClientCert", t->ClientCert);
	FUNC0(p, "Random", t->Random, sizeof(t->Random));
	FUNC0(p, "Signature", t->Signature, sizeof(t->Signature));
	FUNC1(p, "UseSecureDeviceId", t->UseSecureDeviceId);
	FUNC1(p, "BitmapId", t->BitmapId);
}