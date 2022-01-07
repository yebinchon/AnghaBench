
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; int * fp; } ;
typedef TYPE_1__ curl_mimepart ;


 int Curl_safefree (int *) ;
 int fclose (int *) ;

__attribute__((used)) static void mime_file_free(void *ptr)
{
  curl_mimepart *part = (curl_mimepart *) ptr;

  if(part->fp) {
    fclose(part->fp);
    part->fp = ((void*)0);
  }
  Curl_safefree(part->data);
  part->data = ((void*)0);
}
