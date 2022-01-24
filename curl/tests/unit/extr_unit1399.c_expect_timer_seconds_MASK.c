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
struct TYPE_2__ {int /*<<< orphan*/  t_starttransfer; int /*<<< orphan*/  t_pretransfer; int /*<<< orphan*/  t_appconnect; int /*<<< orphan*/  t_connect; int /*<<< orphan*/  t_nslookup; } ;
struct Curl_easy {TYPE_1__ progress; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct Curl_easy *data, int seconds)
{
  char msg[64];
  FUNC1(msg, sizeof(msg), "about %d seconds should have passed", seconds);
  FUNC0(FUNC2(data->progress.t_nslookup, seconds), msg);
  FUNC0(FUNC2(data->progress.t_connect, seconds), msg);
  FUNC0(FUNC2(data->progress.t_appconnect, seconds), msg);
  FUNC0(FUNC2(data->progress.t_pretransfer, seconds),
              msg);
  FUNC0(FUNC2(data->progress.t_starttransfer, seconds),
              msg);
}