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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_hdr {int /*<<< orphan*/  identifier; } ;

/* Variables and functions */
 struct eap_hdr* FUNC0 (struct wpabuf const*) ; 
 int FUNC1 (struct wpabuf const*) ; 

u8 FUNC2(const struct wpabuf *msg)
{
	const struct eap_hdr *eap;

	if (FUNC1(msg) < sizeof(*eap))
		return 0;

	eap = FUNC0(msg);
	return eap->identifier;
}