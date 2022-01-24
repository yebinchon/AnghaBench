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
struct Curl_easy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*) ; 

__attribute__((used)) static void FUNC2(struct Curl_easy *data)
{
  /* this is a completed transfer */

  /* Important: reset the conn pointer so that we don't point to memory
     that could be freed anytime */
  FUNC1(data);
  FUNC0(data); /* stop all timers */
}