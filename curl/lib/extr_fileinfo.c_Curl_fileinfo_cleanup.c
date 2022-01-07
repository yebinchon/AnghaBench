
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b_data; } ;
struct fileinfo {TYPE_1__ info; } ;


 int Curl_safefree (int ) ;
 int free (struct fileinfo*) ;

void Curl_fileinfo_cleanup(struct fileinfo *finfo)
{
  if(!finfo)
    return;

  Curl_safefree(finfo->info.b_data);
  free(finfo);
}
