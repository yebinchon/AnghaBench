
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int idx; char* s; size_t len; } ;
typedef TYPE_1__ rcheevos_ctx_desc_t ;
typedef int file_list_t ;


 unsigned int MENU_SETTINGS_CHEEVOS_START ;
 int MENU_SUBLABEL_MAX_LENGTH ;
 int rcheevos_get_description (TYPE_1__*) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int action_bind_sublabel_cheevos_entry(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   return 0;
}
