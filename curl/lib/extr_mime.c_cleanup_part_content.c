
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ curl_off_t ;
struct TYPE_3__ {int kind; int encstate; scalar_t__ datasize; int * fp; int * data; void* arg; int (* freefunc ) (void*) ;int * seekfunc; int * readfunc; } ;
typedef TYPE_1__ curl_mimepart ;


 int MIMEKIND_NONE ;
 int cleanup_encoder_state (int *) ;
 int stub1 (void*) ;

__attribute__((used)) static void cleanup_part_content(curl_mimepart *part)
{
  if(part->freefunc)
    part->freefunc(part->arg);

  part->readfunc = ((void*)0);
  part->seekfunc = ((void*)0);
  part->freefunc = ((void*)0);
  part->arg = (void *) part;
  part->data = ((void*)0);
  part->fp = ((void*)0);
  part->datasize = (curl_off_t) 0;
  cleanup_encoder_state(&part->encstate);
  part->kind = MIMEKIND_NONE;
}
