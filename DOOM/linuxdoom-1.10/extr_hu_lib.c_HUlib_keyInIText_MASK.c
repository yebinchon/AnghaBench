#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  l; } ;
typedef  TYPE_1__ hu_itext_t ;
typedef  int boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 unsigned char KEY_BACKSPACE ; 
 unsigned char KEY_ENTER ; 

boolean
FUNC2
( hu_itext_t*	it,
  unsigned char ch )
{

    if (ch >= ' ' && ch <= '_') 
  	FUNC0(&it->l, (char) ch);
    else 
	if (ch == KEY_BACKSPACE) 
	    FUNC1(it);
	else 
	    if (ch != KEY_ENTER) 
		return false; // did not eat key

    return true; // ate the key

}