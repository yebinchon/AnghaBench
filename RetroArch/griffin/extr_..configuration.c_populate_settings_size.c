
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct config_size_setting {int dummy; } ;
struct TYPE_4__ {int rewind_buffer_size; } ;
struct TYPE_5__ {TYPE_1__ sizes; } ;
typedef TYPE_2__ settings_t ;


 int DEFAULT_REWIND_BUFFER_SIZE ;
 int SETTING_SIZE (char*,int *,int,int ,int) ;
 scalar_t__ calloc (int,int) ;

__attribute__((used)) static struct config_size_setting *populate_settings_size(settings_t *settings, int *size)
{
   unsigned count = 0;
   struct config_size_setting *tmp = (struct config_size_setting*)calloc((*size + 1), sizeof(struct config_size_setting));

   if (!tmp)
      return ((void*)0);

   SETTING_SIZE("rewind_buffer_size", &settings->sizes.rewind_buffer_size, 1, DEFAULT_REWIND_BUFFER_SIZE, 0);

   *size = count;

   return tmp;
}
