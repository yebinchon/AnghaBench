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
struct urlpieces {int /*<<< orphan*/  query; int /*<<< orphan*/  path; int /*<<< orphan*/  options; int /*<<< orphan*/  password; int /*<<< orphan*/  user; int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; int /*<<< orphan*/  scheme; } ;
struct TYPE_2__ {int /*<<< orphan*/ * uh; struct urlpieces up; } ;
struct Curl_easy {TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct Curl_easy *data)
{
  struct urlpieces *up = &data->state.up;
  FUNC0(up->scheme);
  FUNC0(up->hostname);
  FUNC0(up->port);
  FUNC0(up->user);
  FUNC0(up->password);
  FUNC0(up->options);
  FUNC0(up->path);
  FUNC0(up->query);
  FUNC1(data->state.uh);
  data->state.uh = NULL;
}