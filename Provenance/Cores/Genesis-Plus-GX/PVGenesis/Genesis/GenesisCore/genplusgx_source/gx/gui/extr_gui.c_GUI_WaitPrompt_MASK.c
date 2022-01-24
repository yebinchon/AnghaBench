#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int keys; } ;
struct TYPE_3__ {int /*<<< orphan*/  buttonA; int /*<<< orphan*/  throbber; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Key_A_png ; 
 int PAD_BUTTON_A ; 
 scalar_t__ SILENT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ m_input ; 
 TYPE_1__ message_box ; 

void FUNC5(char *title, char *msg)
{
  if (SILENT)
    return;

  /* clear unused texture */
  FUNC3(&message_box.throbber);

  /* open or update message box */
  FUNC1(title, msg, 0);

  /* allocate texture */
  message_box.buttonA = FUNC4(Key_A_png,0);

  /* wait for button A */
  while (m_input.keys & PAD_BUTTON_A)
    FUNC2();
  while (!(m_input.keys & PAD_BUTTON_A))
    FUNC2();

  /* always close message box */
  FUNC0();
}