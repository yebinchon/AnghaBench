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
struct transfer_status {int halted; int please; int /*<<< orphan*/  easy; } ;
typedef  int /*<<< orphan*/  curl_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURLPAUSE_CONT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC2(void *userp,
                           curl_off_t dltotal,
                           curl_off_t dlnow,
                           curl_off_t ultotal,
                           curl_off_t ulnow)
{
  struct transfer_status *st = (struct transfer_status *)userp;
  (void)dltotal;
  (void)dlnow;
  (void)ultotal;
  (void)ulnow;
  if(st->halted) {
    st->please++;
    if(st->please == 2) {
      /* waited enough, unpause! */
      FUNC0(st->easy, CURLPAUSE_CONT);
    }
  }
  FUNC1(stderr, "xferinfo: paused %d\n", st->halted);
  return 0; /* go on */
}