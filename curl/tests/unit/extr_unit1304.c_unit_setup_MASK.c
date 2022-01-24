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
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  login ; 
 int /*<<< orphan*/  password ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static CURLcode FUNC2(void)
{
  password = FUNC1("");
  login = FUNC1("");
  if(!password || !login) {
    FUNC0(password);
    FUNC0(login);
    return CURLE_OUT_OF_MEMORY;
  }
  return CURLE_OK;
}