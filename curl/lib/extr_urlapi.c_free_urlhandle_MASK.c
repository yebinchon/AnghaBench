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
struct Curl_URL {int /*<<< orphan*/  temppath; int /*<<< orphan*/  scratch; int /*<<< orphan*/  fragment; int /*<<< orphan*/  query; int /*<<< orphan*/  path; int /*<<< orphan*/  port; int /*<<< orphan*/  zoneid; int /*<<< orphan*/  host; int /*<<< orphan*/  options; int /*<<< orphan*/  password; int /*<<< orphan*/  user; int /*<<< orphan*/  scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct Curl_URL *u)
{
  FUNC0(u->scheme);
  FUNC0(u->user);
  FUNC0(u->password);
  FUNC0(u->options);
  FUNC0(u->host);
  FUNC0(u->zoneid);
  FUNC0(u->port);
  FUNC0(u->path);
  FUNC0(u->query);
  FUNC0(u->fragment);
  FUNC0(u->scratch);
  FUNC0(u->temppath);
}