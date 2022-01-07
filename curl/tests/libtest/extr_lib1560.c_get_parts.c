
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* in; scalar_t__ ucode; int getflags; int out; int urlflags; } ;
typedef scalar_t__ CURLUcode ;
typedef int CURLU ;


 int CURLUPART_URL ;
 scalar_t__ checkparts (int *,char*,int ,int ) ;
 int * curl_url () ;
 int curl_url_cleanup (int *) ;
 scalar_t__ curl_url_set (int *,int ,char*,int ) ;
 int fprintf (int ,char*,char*,int,scalar_t__) ;
 TYPE_1__* get_parts_list ;
 int stderr ;

__attribute__((used)) static int get_parts(void)
{
  int i;
  int error = 0;
  for(i = 0; get_parts_list[i].in && !error; i++) {
    CURLUcode rc;
    CURLU *urlp = curl_url();
    if(!urlp) {
      error++;
      break;
    }
    rc = curl_url_set(urlp, CURLUPART_URL,
                      get_parts_list[i].in,
                      get_parts_list[i].urlflags);
    if(rc != get_parts_list[i].ucode) {
      fprintf(stderr, "Get parts\nin: %s\nreturned %d (expected %d)\n",
              get_parts_list[i].in, (int)rc, get_parts_list[i].ucode);
      error++;
    }
    else if(get_parts_list[i].ucode) {

    }
    else if(checkparts(urlp, get_parts_list[i].in, get_parts_list[i].out,
                       get_parts_list[i].getflags))
      error++;
    curl_url_cleanup(urlp);
  }
  return error;
}
