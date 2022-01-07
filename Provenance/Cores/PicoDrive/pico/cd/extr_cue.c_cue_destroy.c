
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int track_count; TYPE_1__* tracks; } ;
typedef TYPE_2__ cue_data_t ;
struct TYPE_5__ {TYPE_2__* fname; } ;


 int free (TYPE_2__*) ;

void cue_destroy(cue_data_t *data)
{
 int c;

 if (data == ((void*)0)) return;

 for (c = data->track_count; c > 0; c--)
  if (data->tracks[c].fname != ((void*)0))
   free(data->tracks[c].fname);
 free(data);
}
