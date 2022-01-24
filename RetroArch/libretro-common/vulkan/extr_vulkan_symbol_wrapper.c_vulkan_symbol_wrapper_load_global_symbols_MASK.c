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
typedef  int /*<<< orphan*/  VkBool32 ;

/* Variables and functions */
 int /*<<< orphan*/  VK_FALSE ; 
 int /*<<< orphan*/  VK_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vkCreateInstance ; 
 int /*<<< orphan*/  vkEnumerateInstanceExtensionProperties ; 
 int /*<<< orphan*/  vkEnumerateInstanceLayerProperties ; 

VkBool32 FUNC1(void)
{
    if (!FUNC0(NULL, "vkCreateInstance", vkCreateInstance)) return VK_FALSE;
    if (!FUNC0(NULL, "vkEnumerateInstanceExtensionProperties", vkEnumerateInstanceExtensionProperties)) return VK_FALSE;
    if (!FUNC0(NULL, "vkEnumerateInstanceLayerProperties", vkEnumerateInstanceLayerProperties)) return VK_FALSE;
    return VK_TRUE;
}