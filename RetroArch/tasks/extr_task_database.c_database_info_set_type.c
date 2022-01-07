
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum database_type { ____Placeholder_database_type } database_type ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ database_info_handle_t ;



__attribute__((used)) static void database_info_set_type(
      database_info_handle_t *handle,
      enum database_type type)
{
   if (!handle)
      return;
   handle->type = type;
}
