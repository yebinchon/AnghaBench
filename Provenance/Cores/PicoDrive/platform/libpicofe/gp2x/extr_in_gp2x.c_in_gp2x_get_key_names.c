
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_drv_t ;


 int IN_GP2X_NBUTTONS ;
 char const* const* in_gp2x_keys ;

__attribute__((used)) static const char * const *
in_gp2x_get_key_names(const in_drv_t *drv, int *count)
{
 *count = IN_GP2X_NBUTTONS;
 return in_gp2x_keys;
}
