
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_3__ {int archive_size; int directory; int data; int start_delta; } ;
typedef TYPE_1__ file_archive_transfer_t ;



int file_archive_parse_file_progress(file_archive_transfer_t *state)
{
   ptrdiff_t delta = 0;

   if (!state || state->archive_size == 0)
      return 0;

   delta = state->directory - state->data;

   if (!state->start_delta)
      state->start_delta = delta;

   return (int)(((delta - state->start_delta) * 100) / (state->archive_size - state->start_delta));
}
