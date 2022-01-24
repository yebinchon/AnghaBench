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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  EXTENDED_KEY_USAGE ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_OBJECT_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_OCSP_sign ; 
 int /*<<< orphan*/  NID_client_auth ; 
 int /*<<< orphan*/  NID_code_sign ; 
 int /*<<< orphan*/  NID_email_protect ; 
 int /*<<< orphan*/  NID_ext_key_usage ; 
 int /*<<< orphan*/  NID_ipsecEndSystem ; 
 int /*<<< orphan*/  NID_ipsecTunnel ; 
 int /*<<< orphan*/  NID_ipsecUser ; 
 int /*<<< orphan*/  NID_server_auth ; 
 int /*<<< orphan*/  NID_time_stamp ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

X509_EXTENSION *FUNC4()
{
	EXTENDED_KEY_USAGE *ex = FUNC2();
	X509_EXTENSION *ret;

	FUNC0(ex, NID_server_auth);
	FUNC0(ex, NID_client_auth);
	FUNC0(ex, NID_code_sign);
	FUNC0(ex, NID_email_protect);
	FUNC0(ex, NID_ipsecEndSystem);
	FUNC0(ex, NID_ipsecTunnel);
	FUNC0(ex, NID_ipsecUser);
	FUNC0(ex, NID_time_stamp);
	FUNC0(ex, NID_OCSP_sign);

	ret = FUNC1(NID_ext_key_usage, 0, ex);

	FUNC3(ex, ASN1_OBJECT_free);

	return ret;
}