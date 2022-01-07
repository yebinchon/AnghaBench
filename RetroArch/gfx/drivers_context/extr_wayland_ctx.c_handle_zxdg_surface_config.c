
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zxdg_surface_v6 {int dummy; } ;


 int zxdg_surface_v6_ack_configure (struct zxdg_surface_v6*,int ) ;

__attribute__((used)) static void handle_zxdg_surface_config(void *data,
      struct zxdg_surface_v6 *surface,
      uint32_t serial)
{
    zxdg_surface_v6_ack_configure(surface, serial);
}
