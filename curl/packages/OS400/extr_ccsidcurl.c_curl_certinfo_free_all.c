
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_certinfo {int num_of_certs; int * certinfo; } ;


 int curl_slist_free_all (int ) ;
 int free (char*) ;

void
curl_certinfo_free_all(struct curl_certinfo *info)

{

  if(info) {
    if(info->certinfo) {
      int i;

      for(i = 0; i < info->num_of_certs; i++)
        curl_slist_free_all(info->certinfo[i]);
      free((char *) info->certinfo);
    }
    free((char *) info);
  }
}
