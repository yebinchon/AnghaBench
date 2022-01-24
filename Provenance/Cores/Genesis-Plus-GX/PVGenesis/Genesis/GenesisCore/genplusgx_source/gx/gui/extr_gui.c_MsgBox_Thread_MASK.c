#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* title; char* msg; double progress; TYPE_3__* buttonA; TYPE_3__* window; TYPE_2__* throbber; TYPE_3__* top; scalar_t__ parent; scalar_t__ refresh; } ;
typedef  TYPE_1__ gui_message ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_6__ {int width; int height; } ;
typedef  int /*<<< orphan*/  GXColor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ WHITE ; 
 int /*<<< orphan*/  bg_color ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int,int,int,double,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void *FUNC7(gui_message *message_box)
{
  while (message_box->refresh)
  {
    /* draw parent menu */
    if (message_box->parent)
    {
      FUNC1(message_box->parent);
    }
    else
    {
      FUNC2(bg_color);
    }

    /* draw window */
    FUNC3(message_box->window,166,160,message_box->window->width,message_box->window->height,230);
    FUNC3(message_box->top,166,160,message_box->top->width,message_box->top->height,255);

    /* draw title */
    if (message_box->title)
      FUNC0(message_box->title,20,166,166+message_box->window->width,160+(message_box->top->height-20)/2+20,(GXColor)WHITE);

    /* draw box message */
    if (message_box->msg)
      FUNC0(message_box->msg,18,166,166+message_box->window->width,248,(GXColor)WHITE);

    /* draw throbber */
    if (message_box->throbber)
      FUNC4(message_box->throbber,166+(message_box->window->width-message_box->throbber->width)/2,160+message_box->window->height-message_box->throbber->height-20,message_box->throbber->width,message_box->throbber->height,(message_box->progress * 360.0) / 100.0, 255);

    /* draw exit message */
    if (message_box->buttonA)
    {
      FUNC0("Press    to continue.",18,166,166+message_box->window->width,248+22,(GXColor)WHITE);
      FUNC3(message_box->buttonA, 166+116, 248+4+(18-message_box->buttonA->height)/2,message_box->buttonA->width, message_box->buttonA->height,255);
    }

    /* update display */
    FUNC5();

    /* update progression */
    message_box->progress++;
    if (message_box->progress > 100)
      message_box->progress = 0;
    FUNC6(10);
  }

  return 0;
}