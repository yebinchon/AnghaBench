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
struct TYPE_2__ {int /*<<< orphan*/  msg; int /*<<< orphan*/  title; } ;

/* Variables and functions */
 TYPE_1__ message_box ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC1(char *title, char *msg)
{
  if (title)
    FUNC0(message_box.title,title,64);
  if (msg)
    FUNC0(message_box.msg,msg,64);
}