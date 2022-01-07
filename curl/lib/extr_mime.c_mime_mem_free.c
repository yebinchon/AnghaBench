
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
typedef TYPE_1__ curl_mimepart ;


 int Curl_safefree (int ) ;

__attribute__((used)) static void mime_mem_free(void *ptr)
{
  Curl_safefree(((curl_mimepart *) ptr)->data);
}
