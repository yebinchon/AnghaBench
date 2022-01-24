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
struct wpa_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_sm*,int /*<<< orphan*/ ,int) ; 

void   FUNC2(void *eloop_ctx, void *timeout_ctx)
{
    struct wpa_sm *sm = eloop_ctx;

   #ifdef DEBUG_PRINT    
    wpa_printf(MSG_DEBUG, "WPA: Request PTK rekeying");
   #endif
    FUNC1(sm, 0, 1);
}