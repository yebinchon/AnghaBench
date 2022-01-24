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
struct parport_joypad {char saved_data; int fd; char saved_control; int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPRELEASE ; 
 int /*<<< orphan*/  PPWDATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC3(struct parport_joypad *pad)
{
   char data = pad->saved_data;

   if (FUNC2(pad->fd, PPWDATA, &data) < 0)
      FUNC0("[Joypad]: Failed to restore original data register on %s\n", pad->ident);

   data = pad->saved_control;
   if (FUNC2(pad->fd, PPWDATA, &data) < 0)
      FUNC0("[Joypad]: Failed to restore original control register on %s\n", pad->ident);

   if (FUNC2(pad->fd, PPRELEASE) < 0)
      FUNC0("[Joypad]: Failed to release parallel port %s\n", pad->ident);

   FUNC1(pad->fd);
   pad->fd = -1;
}