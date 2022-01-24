#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spvc_resources ;
typedef  int /*<<< orphan*/  spvc_resource_type ;
struct TYPE_3__ {int id; int base_type_id; int type_id; char* name; } ;
typedef  TYPE_1__ spvc_reflected_resource ;
typedef  int /*<<< orphan*/  spvc_compiler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SpvDecorationBinding ; 
 int /*<<< orphan*/  SpvDecorationDescriptorSet ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const**,size_t*) ; 

__attribute__((used)) static void FUNC4(spvc_compiler compiler, spvc_resources resources, spvc_resource_type type, const char *tag)
{
	const spvc_reflected_resource *list = NULL;
	size_t count = 0;
	size_t i;
	FUNC0(FUNC3(resources, type, &list, &count));
	FUNC1("%s\n", tag);
	for (i = 0; i < count; i++)
	{
		FUNC1("ID: %u, BaseTypeID: %u, TypeID: %u, Name: %s\n", list[i].id, list[i].base_type_id, list[i].type_id,
		       list[i].name);
		FUNC1("  Set: %u, Binding: %u\n",
		       FUNC2(compiler, list[i].id, SpvDecorationDescriptorSet),
		       FUNC2(compiler, list[i].id, SpvDecorationBinding));
	}
}