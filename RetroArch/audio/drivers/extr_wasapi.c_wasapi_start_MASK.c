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
struct TYPE_2__ {int running; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ wasapi_t ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ AUDCLNT_E_NOT_STOPPED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(void *wh, bool u)
{
   wasapi_t *w = (wasapi_t*)wh;
   HRESULT  hr = FUNC1(w->client);

   if (hr == AUDCLNT_E_NOT_STOPPED)
      return true;

   if (FUNC0(hr))
      return w->running;

   w->running = true;

   return true;
}