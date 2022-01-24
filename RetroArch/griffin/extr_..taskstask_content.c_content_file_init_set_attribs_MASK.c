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
union string_list_elem_attr {int i; } ;
struct string_list {unsigned int size; TYPE_2__* elems; } ;
struct retro_subsystem_info {TYPE_1__* roms; } ;
struct TYPE_7__ {int block_extract; int need_fullpath; scalar_t__ set_supports_no_game_enable; } ;
typedef  TYPE_3__ content_information_ctx_t ;
struct TYPE_6__ {char* data; } ;
struct TYPE_5__ {int block_extract; int need_fullpath; int required; } ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  RARCH_PATH_SUBSYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct string_list* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,char*,union string_list_elem_attr) ; 

__attribute__((used)) static void FUNC5(
      struct string_list *content,
      const struct retro_subsystem_info *special,
      content_information_ctx_t *content_ctx,
      char **error_string,
      union string_list_elem_attr *attr)
{
   struct string_list *subsystem    = FUNC2();

   attr->i                          = 0;

   if (!FUNC3(RARCH_PATH_SUBSYSTEM) && special)
   {
      unsigned i;

      for (i = 0; i < subsystem->size; i++)
      {
         attr->i            = special->roms[i].block_extract;
         attr->i           |= special->roms[i].need_fullpath << 1;
         attr->i           |= special->roms[i].required      << 2;

         FUNC4(content, subsystem->elems[i].data, *attr);
      }
   }
   else
   {
      bool contentless           = false;
      bool is_inited             = false;
      bool content_path_is_empty = FUNC3(RARCH_PATH_CONTENT);

      FUNC0(&contentless, &is_inited);

      attr->i               = content_ctx->block_extract;
      attr->i              |= content_ctx->need_fullpath << 1;
      attr->i              |= (!contentless)  << 2;

      if (content_path_is_empty
            && contentless
            && content_ctx->set_supports_no_game_enable)
         FUNC4(content, "", *attr);
      else if (!content_path_is_empty)
         FUNC4(content, FUNC1(RARCH_PATH_CONTENT), *attr);
   }
}