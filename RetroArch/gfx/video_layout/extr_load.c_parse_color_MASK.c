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
struct TYPE_4__ {void* a; void* b; void* g; void* r; } ;
typedef  TYPE_1__ video_layout_color_t ;
typedef  int /*<<< orphan*/  scope_t ;
typedef  int /*<<< orphan*/  rxml_node_t ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 TYPE_1__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static video_layout_color_t FUNC4(scope_t *scope, rxml_node_t *node)
{
   const char *prop;
   video_layout_color_t color = FUNC1();

   if ((prop = FUNC3(scope, FUNC2(node, "red"))))    color.r = FUNC0(prop);
   if ((prop = FUNC3(scope, FUNC2(node, "green"))))  color.g = FUNC0(prop);
   if ((prop = FUNC3(scope, FUNC2(node, "blue"))))   color.b = FUNC0(prop);
   if ((prop = FUNC3(scope, FUNC2(node, "alpha"))))  color.a = FUNC0(prop);

   return color;
}