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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,int,int,int) ; 

__attribute__((used)) static void FUNC1(char *buf, size_t size, int lba)
{
  lba += 150;
  FUNC0(buf, size, "%02d:%02d:%02d", lba / 60 / 75,
    (lba / 75) % 60, lba % 75);
}