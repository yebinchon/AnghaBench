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
struct Curl_URL {int dummy; } ;
typedef  scalar_t__ CURLUcode ;
typedef  int /*<<< orphan*/  CURLU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static CURLUcode FUNC3(const char *url, CURLU *u, unsigned int flags)
{
  CURLUcode result = FUNC2(url, u, flags);
  if(result) {
    FUNC0(u);
    FUNC1(u, 0, sizeof(struct Curl_URL));
  }
  return result;
}