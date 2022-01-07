
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spvc_resources ;
typedef int spvc_resource_type ;
struct TYPE_3__ {int id; int base_type_id; int type_id; char* name; } ;
typedef TYPE_1__ spvc_reflected_resource ;
typedef int spvc_compiler ;


 int SPVC_CHECKED_CALL (int ) ;
 int SpvDecorationBinding ;
 int SpvDecorationDescriptorSet ;
 int printf (char*,...) ;
 int spvc_compiler_get_decoration (int ,int,int ) ;
 int spvc_resources_get_resource_list_for_type (int ,int ,TYPE_1__ const**,size_t*) ;

__attribute__((used)) static void dump_resource_list(spvc_compiler compiler, spvc_resources resources, spvc_resource_type type, const char *tag)
{
 const spvc_reflected_resource *list = ((void*)0);
 size_t count = 0;
 size_t i;
 SPVC_CHECKED_CALL(spvc_resources_get_resource_list_for_type(resources, type, &list, &count));
 printf("%s\n", tag);
 for (i = 0; i < count; i++)
 {
  printf("ID: %u, BaseTypeID: %u, TypeID: %u, Name: %s\n", list[i].id, list[i].base_type_id, list[i].type_id,
         list[i].name);
  printf("  Set: %u, Binding: %u\n",
         spvc_compiler_get_decoration(compiler, list[i].id, SpvDecorationDescriptorSet),
         spvc_compiler_get_decoration(compiler, list[i].id, SpvDecorationBinding));
 }
}
