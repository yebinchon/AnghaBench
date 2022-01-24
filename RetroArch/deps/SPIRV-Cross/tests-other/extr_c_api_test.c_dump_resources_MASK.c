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
typedef  int /*<<< orphan*/  spvc_resources ;
typedef  int /*<<< orphan*/  spvc_compiler ;

/* Variables and functions */
 int /*<<< orphan*/  SPVC_RESOURCE_TYPE_PUSH_CONSTANT ; 
 int /*<<< orphan*/  SPVC_RESOURCE_TYPE_SAMPLED_IMAGE ; 
 int /*<<< orphan*/  SPVC_RESOURCE_TYPE_SEPARATE_IMAGE ; 
 int /*<<< orphan*/  SPVC_RESOURCE_TYPE_SEPARATE_SAMPLERS ; 
 int /*<<< orphan*/  SPVC_RESOURCE_TYPE_STAGE_INPUT ; 
 int /*<<< orphan*/  SPVC_RESOURCE_TYPE_STAGE_OUTPUT ; 
 int /*<<< orphan*/  SPVC_RESOURCE_TYPE_STORAGE_BUFFER ; 
 int /*<<< orphan*/  SPVC_RESOURCE_TYPE_STORAGE_IMAGE ; 
 int /*<<< orphan*/  SPVC_RESOURCE_TYPE_SUBPASS_INPUT ; 
 int /*<<< orphan*/  SPVC_RESOURCE_TYPE_UNIFORM_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(spvc_compiler compiler, spvc_resources resources)
{
	FUNC0(compiler, resources, SPVC_RESOURCE_TYPE_UNIFORM_BUFFER, "UBO");
	FUNC0(compiler, resources, SPVC_RESOURCE_TYPE_STORAGE_BUFFER, "SSBO");
	FUNC0(compiler, resources, SPVC_RESOURCE_TYPE_PUSH_CONSTANT, "Push");
	FUNC0(compiler, resources, SPVC_RESOURCE_TYPE_SEPARATE_SAMPLERS, "Samplers");
	FUNC0(compiler, resources, SPVC_RESOURCE_TYPE_SEPARATE_IMAGE, "Image");
	FUNC0(compiler, resources, SPVC_RESOURCE_TYPE_SAMPLED_IMAGE, "Combined image samplers");
	FUNC0(compiler, resources, SPVC_RESOURCE_TYPE_STAGE_INPUT, "Stage input");
	FUNC0(compiler, resources, SPVC_RESOURCE_TYPE_STAGE_OUTPUT, "Stage output");
	FUNC0(compiler, resources, SPVC_RESOURCE_TYPE_STORAGE_IMAGE, "Storage image");
	FUNC0(compiler, resources, SPVC_RESOURCE_TYPE_SUBPASS_INPUT, "Subpass input");
}