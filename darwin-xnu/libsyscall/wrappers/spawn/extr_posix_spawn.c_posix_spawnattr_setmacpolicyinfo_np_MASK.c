#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * posix_spawnattr_t ;
struct TYPE_9__ {uintptr_t data; size_t datalen; int /*<<< orphan*/  policyname; } ;
typedef  TYPE_1__ _ps_mac_policy_extension_t ;
typedef  TYPE_2__* _posix_spawnattr_t ;
typedef  TYPE_3__* _posix_spawn_mac_policy_extensions_t ;
struct TYPE_11__ {int psmx_alloc; int psmx_count; TYPE_1__* psmx_extensions; } ;
struct TYPE_10__ {TYPE_3__* psa_mac_extensions; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int PS_MAC_EXTENSIONS_INIT_COUNT ; 
 size_t FUNC0 (int) ; 
 TYPE_3__* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int,int,int*) ; 
 TYPE_1__* FUNC3 (TYPE_3__*,char const*) ; 
 TYPE_3__* FUNC4 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC6(posix_spawnattr_t * __restrict attr,
		const char *policyname, void *data, size_t datalen)
{
	_posix_spawnattr_t psattr;
	_posix_spawn_mac_policy_extensions_t psmx;
	_ps_mac_policy_extension_t *extension;

	if (attr == NULL || *attr == NULL || policyname == NULL)
		return EINVAL;

	psattr = *(_posix_spawnattr_t *)attr;
	psmx = psattr->psa_mac_extensions;
	extension = FUNC3(psattr->psa_mac_extensions, policyname);
	if (extension != NULL) {
		extension->data = (uintptr_t)data;
		extension->datalen = datalen;
		return 0;
	}
	else if (psmx == NULL) {
		psmx = psattr->psa_mac_extensions = FUNC1(FUNC0(PS_MAC_EXTENSIONS_INIT_COUNT));
		if (psmx == NULL)
			return ENOMEM;
		psmx->psmx_alloc = PS_MAC_EXTENSIONS_INIT_COUNT;
		psmx->psmx_count = 0;
	}
	else if (psmx->psmx_count == psmx->psmx_alloc) {
		int newnum = 0;
		if (FUNC2(psmx->psmx_alloc, 2, &newnum))
			return ENOMEM;
		size_t extsize = FUNC0(newnum);
		if (extsize == 0)
			return ENOMEM;
		psmx = psattr->psa_mac_extensions = FUNC4(psmx, extsize);
		if (psmx == NULL)
			return ENOMEM;
		psmx->psmx_alloc = newnum;
	}
	extension = &psmx->psmx_extensions[psmx->psmx_count];
	FUNC5(extension->policyname, policyname, sizeof(extension->policyname));
	extension->data = (uintptr_t)data;
	extension->datalen = datalen;
	psmx->psmx_count += 1;
	return 0;
}