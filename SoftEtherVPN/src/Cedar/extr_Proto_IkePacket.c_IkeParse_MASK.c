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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  IKE_PACKET ;
typedef  int /*<<< orphan*/  IKE_CRYPTO_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

IKE_PACKET *FUNC1(void *data, UINT size, IKE_CRYPTO_PARAM *cparam)
{
	return FUNC0(data, size, cparam, false);
}