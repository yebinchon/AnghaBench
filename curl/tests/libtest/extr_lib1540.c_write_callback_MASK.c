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
struct transfer_status {int counter; int halted; } ;

/* Variables and functions */
 size_t CURL_WRITEFUNC_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static size_t FUNC2(void *ptr, size_t size, size_t nmemb, void *userp)
{
  struct transfer_status *st = (struct transfer_status *)userp;
  size_t len = size * nmemb;
  st->counter++;
  if(st->counter > 1) {
    /* the first call puts us on pause, so subsequent calls are after
       unpause */
    FUNC0(ptr, size, nmemb, stdout);
    return len;
  }
  FUNC1("Got %d bytes but pausing!\n", (int)len);
  st->halted = 1;
  return CURL_WRITEFUNC_PAUSE;
}