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
struct Curl_share {int specifier; int /*<<< orphan*/  hostcache; } ;

/* Variables and functions */
 int CURL_LOCK_DATA_SHARE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct Curl_share* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_share*) ; 

struct Curl_share *
FUNC3(void)
{
  struct Curl_share *share = FUNC1(1, sizeof(struct Curl_share));
  if(share) {
    share->specifier |= (1<<CURL_LOCK_DATA_SHARE);

    if(FUNC0(&share->hostcache)) {
      FUNC2(share);
      return NULL;
    }
  }

  return share;
}