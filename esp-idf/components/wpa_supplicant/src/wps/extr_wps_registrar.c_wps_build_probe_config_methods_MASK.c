#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct wps_registrar {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int config_methods; } ;

/* Variables and functions */
 int ATTR_CONFIG_METHODS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPS_CONFIG_PHY_PUSHBUTTON ; 
 int WPS_CONFIG_PUSHBUTTON ; 
 int WPS_CONFIG_VIRT_PUSHBUTTON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC2(struct wps_registrar *reg,
					  struct wpabuf *msg)
{
	u16 methods;
	/*
	 * These are the methods that the AP supports as an Enrollee for adding
	 * external Registrars.
	 */
	methods = reg->wps->config_methods & ~WPS_CONFIG_PUSHBUTTON;
#ifdef CONFIG_WPS2
	methods &= ~(WPS_CONFIG_VIRT_PUSHBUTTON |
		     WPS_CONFIG_PHY_PUSHBUTTON);
#endif /* CONFIG_WPS2 */
	FUNC0(MSG_DEBUG,  "WPS:  * Config Methods (%x)", methods);
	FUNC1(msg, ATTR_CONFIG_METHODS);
	FUNC1(msg, 2);
	FUNC1(msg, methods);
	return 0;
}