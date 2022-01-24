#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_7__ {int /*<<< orphan*/  list_size; } ;
typedef  TYPE_1__ hibernate_page_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

kern_return_t 
FUNC2(
		hibernate_page_list_t ** page_list_ret,
		hibernate_page_list_t ** page_list_wired_ret,
		hibernate_page_list_t ** page_list_pal_ret)
{
    kern_return_t	retval = KERN_SUCCESS;

    hibernate_page_list_t * page_list = NULL;
    hibernate_page_list_t * page_list_wired = NULL;
    hibernate_page_list_t * page_list_pal = NULL;

    page_list = FUNC0(TRUE);
    if (!page_list) {

	    retval = KERN_RESOURCE_SHORTAGE;
	    goto done;
    }
    page_list_wired = FUNC0(FALSE);
    if (!page_list_wired)
    {
	    FUNC1(page_list, page_list->list_size);

	    retval = KERN_RESOURCE_SHORTAGE;
	    goto done;
    }
    page_list_pal = FUNC0(FALSE);
    if (!page_list_pal)
    {
	    FUNC1(page_list, page_list->list_size);
	    FUNC1(page_list_wired, page_list_wired->list_size);

	    retval = KERN_RESOURCE_SHORTAGE;
	    goto done;
    }
    *page_list_ret        = page_list;
    *page_list_wired_ret  = page_list_wired;
    *page_list_pal_ret    = page_list_pal;

done:
    return (retval);

}