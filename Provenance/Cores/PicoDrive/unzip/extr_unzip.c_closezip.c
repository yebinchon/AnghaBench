
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* name; } ;
struct TYPE_6__ {struct TYPE_6__* zip; scalar_t__ fp; struct TYPE_6__* ecd; struct TYPE_6__* cd; TYPE_1__ ent; } ;
typedef TYPE_2__ ZIP ;


 int fclose (scalar_t__) ;
 int free (TYPE_2__*) ;

void closezip(ZIP* zip) {

 free(zip->ent.name);
 free(zip->cd);
 free(zip->ecd);

 if (zip->fp)
  fclose(zip->fp);
 free(zip->zip);
 free(zip);
}
