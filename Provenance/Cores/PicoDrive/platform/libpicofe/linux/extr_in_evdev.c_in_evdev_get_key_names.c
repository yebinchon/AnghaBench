
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct in_pdata {char const* const* key_names; } ;
struct TYPE_3__ {struct in_pdata* pdata; } ;
typedef TYPE_1__ in_drv_t ;


 int KEY_CNT ;
 char const* const* in_evdev_keys ;

__attribute__((used)) static const char * const *
in_evdev_get_key_names(const in_drv_t *drv, int *count)
{
 const struct in_pdata *pdata = drv->pdata;
 *count = KEY_CNT;

 if (pdata->key_names)
  return pdata->key_names;
 return in_evdev_keys;
}
