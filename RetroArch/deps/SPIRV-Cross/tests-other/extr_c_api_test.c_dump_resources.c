
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spvc_resources ;
typedef int spvc_compiler ;


 int SPVC_RESOURCE_TYPE_PUSH_CONSTANT ;
 int SPVC_RESOURCE_TYPE_SAMPLED_IMAGE ;
 int SPVC_RESOURCE_TYPE_SEPARATE_IMAGE ;
 int SPVC_RESOURCE_TYPE_SEPARATE_SAMPLERS ;
 int SPVC_RESOURCE_TYPE_STAGE_INPUT ;
 int SPVC_RESOURCE_TYPE_STAGE_OUTPUT ;
 int SPVC_RESOURCE_TYPE_STORAGE_BUFFER ;
 int SPVC_RESOURCE_TYPE_STORAGE_IMAGE ;
 int SPVC_RESOURCE_TYPE_SUBPASS_INPUT ;
 int SPVC_RESOURCE_TYPE_UNIFORM_BUFFER ;
 int dump_resource_list (int ,int ,int ,char*) ;

__attribute__((used)) static void dump_resources(spvc_compiler compiler, spvc_resources resources)
{
 dump_resource_list(compiler, resources, SPVC_RESOURCE_TYPE_UNIFORM_BUFFER, "UBO");
 dump_resource_list(compiler, resources, SPVC_RESOURCE_TYPE_STORAGE_BUFFER, "SSBO");
 dump_resource_list(compiler, resources, SPVC_RESOURCE_TYPE_PUSH_CONSTANT, "Push");
 dump_resource_list(compiler, resources, SPVC_RESOURCE_TYPE_SEPARATE_SAMPLERS, "Samplers");
 dump_resource_list(compiler, resources, SPVC_RESOURCE_TYPE_SEPARATE_IMAGE, "Image");
 dump_resource_list(compiler, resources, SPVC_RESOURCE_TYPE_SAMPLED_IMAGE, "Combined image samplers");
 dump_resource_list(compiler, resources, SPVC_RESOURCE_TYPE_STAGE_INPUT, "Stage input");
 dump_resource_list(compiler, resources, SPVC_RESOURCE_TYPE_STAGE_OUTPUT, "Stage output");
 dump_resource_list(compiler, resources, SPVC_RESOURCE_TYPE_STORAGE_IMAGE, "Storage image");
 dump_resource_list(compiler, resources, SPVC_RESOURCE_TYPE_SUBPASS_INPUT, "Subpass input");
}
