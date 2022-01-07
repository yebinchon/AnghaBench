
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int remains; scalar_t__ print_content; } ;
typedef TYPE_1__ chunk_data_t ;


 long CURL_CHUNK_END_FUNC_OK ;
 int printf (char*) ;

__attribute__((used)) static
long chunk_end(void *ptr)
{
  chunk_data_t *ch_d = ptr;
  if(ch_d->print_content) {
    ch_d->print_content = 0;
    printf("-------------------------------------------------------------\n");
  }
  if(ch_d->remains == 1)
    printf("=============================================================\n");
  return CURL_CHUNK_END_FUNC_OK;
}
