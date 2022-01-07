
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int session_num; TYPE_1__* session; } ;
struct TYPE_3__ {int track_num; scalar_t__ file_id; struct TYPE_3__* track; int * fp; } ;


 TYPE_2__ disc ;
 int fclose (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void ISOCDDeInit(void) {
   int i, j, k;
   if (disc.session)
   {
      for (i = 0; i < disc.session_num; i++)
      {
         if (disc.session[i].track)
         {
            for (j = 0; j < disc.session[i].track_num; j++)
            {
               if (disc.session[i].track[j].fp)
               {
                  fclose(disc.session[i].track[j].fp);


                  for (k = j+1; k < disc.session[i].track_num; k++)
                  {
                     if (disc.session[i].track[j].file_id == disc.session[i].track[k].file_id)
                        disc.session[i].track[k].fp = ((void*)0);
                  }
               }
            }
            free(disc.session[i].track);
         }
      }
      free(disc.session);
   }
}
