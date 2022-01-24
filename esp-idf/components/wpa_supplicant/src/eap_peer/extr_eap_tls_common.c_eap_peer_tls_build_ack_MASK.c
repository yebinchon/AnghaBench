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
typedef  scalar_t__ EapType ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf* FUNC0 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

struct wpabuf * FUNC3(u8 id, EapType eap_type,
				       int peap_version)
{	
	struct wpabuf *resp;

	resp = FUNC0(eap_type, 1, EAP_CODE_RESPONSE, id);
	if (resp == NULL)
		return NULL;
	FUNC1(MSG_DEBUG, "SSL: Building ACK (type=%d id=%d ver=%d) \n",
		   (int) eap_type, id, peap_version);
	FUNC2(resp, peap_version); /* Flags */
	return resp;
}