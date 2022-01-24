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
struct d3d8_texture_info {int type; void* data; void* userdata; } ;
typedef  enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d3d8_texture_info*,uintptr_t*) ; 
 int /*<<< orphan*/  d3d8_video_texture_load_wrap_d3d ; 
 uintptr_t FUNC1 (struct d3d8_texture_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uintptr_t FUNC2(void *video_data, void *data,
      bool threaded, enum texture_filter_type filter_type)
{
   struct d3d8_texture_info info;
   uintptr_t id = 0;

   info.userdata = video_data;
   info.data     = data;
   info.type     = filter_type;

   if (threaded)
      return FUNC1(&info,
            d3d8_video_texture_load_wrap_d3d);

   FUNC0(&info, &id);
   return id;
}