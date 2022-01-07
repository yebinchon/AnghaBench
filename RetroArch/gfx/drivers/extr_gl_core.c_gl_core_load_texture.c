
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct texture_image {int dummy; } ;
typedef enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;
typedef int custom_command_method_t ;




 int video_texture_load_gl_core (struct texture_image*,int,uintptr_t*) ;
 int video_texture_load_wrap_gl_core ;
 int video_texture_load_wrap_gl_core_mipmap ;
 uintptr_t video_thread_texture_load (void*,int ) ;

__attribute__((used)) static uintptr_t gl_core_load_texture(void *video_data, void *data,
                                      bool threaded, enum texture_filter_type filter_type)
{
   uintptr_t id = 0;
   video_texture_load_gl_core((struct texture_image*)data, filter_type, &id);
   return id;
}
