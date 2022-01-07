
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int handle; } ;
typedef TYPE_1__ file_archive_transfer_t ;


 int ARCHIVE_TRANSFER_DEINIT ;
 int file_archive_parse_file_iterate (TYPE_1__*,int *,int *,int *,int *,int *) ;

void file_archive_parse_file_iterate_stop(file_archive_transfer_t *state)
{
   if (!state || !state->handle)
      return;

   state->type = ARCHIVE_TRANSFER_DEINIT;
   file_archive_parse_file_iterate(state, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
