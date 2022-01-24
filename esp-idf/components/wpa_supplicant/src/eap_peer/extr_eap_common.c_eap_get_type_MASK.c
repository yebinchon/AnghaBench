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
struct eap_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  const EapType ;

/* Variables and functions */
 int /*<<< orphan*/  const EAP_TYPE_NONE ; 
 scalar_t__ FUNC0 (struct wpabuf const*) ; 
 int FUNC1 (struct wpabuf const*) ; 

EapType FUNC2(const struct wpabuf *msg)
{
	if (FUNC1(msg) < sizeof(struct eap_hdr) + 1)
		return EAP_TYPE_NONE;

	return ((const u8 *) FUNC0(msg))[sizeof(struct eap_hdr)];
}