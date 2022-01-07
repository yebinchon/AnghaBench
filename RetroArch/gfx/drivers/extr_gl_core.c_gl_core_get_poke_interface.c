
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_poke_interface_t ;


 int gl_core_poke_interface ;

__attribute__((used)) static void gl_core_get_poke_interface(void *data,
      const video_poke_interface_t **iface)
{
   (void)data;
   *iface = &gl_core_poke_interface;
}
