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
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 int /*<<< orphan*/  on_timeout ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(CURLM *multi, long timeout_ms, void *userp)
{
  if(timeout_ms < 0) {
    FUNC1(&timeout);
  }
  else {
    if(timeout_ms == 0)
      timeout_ms = 1; /* 0 means directly call socket_action, but we'll do it
                         in a bit */
    FUNC0(&timeout, on_timeout, timeout_ms, 0);
  }
  return 0;
}