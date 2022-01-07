
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zxdg_shell_v6 {int dummy; } ;


 int zxdg_shell_v6_pong (struct zxdg_shell_v6*,int ) ;

__attribute__((used)) static void zxdg_shell_ping(void *data,
      struct zxdg_shell_v6 *shell, uint32_t serial)
{
    zxdg_shell_v6_pong(shell, serial);
}
