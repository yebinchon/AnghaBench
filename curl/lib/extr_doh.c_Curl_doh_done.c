
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * headers; int pending; } ;
struct TYPE_6__ {TYPE_2__ doh; } ;
struct TYPE_4__ {struct Curl_easy* dohfor; } ;
struct Curl_easy {TYPE_3__ req; TYPE_1__ set; } ;
typedef scalar_t__ CURLcode ;


 int Curl_expire (struct Curl_easy*,int ,int ) ;
 int EXPIRE_RUN_NOW ;
 int curl_easy_strerror (scalar_t__) ;
 int curl_slist_free_all (int *) ;
 int infof (struct Curl_easy*,char*,int ) ;

__attribute__((used)) static int Curl_doh_done(struct Curl_easy *doh, CURLcode result)
{
  struct Curl_easy *data = doh->set.dohfor;

  data->req.doh.pending--;
  infof(data, "a DOH request is completed, %u to go\n", data->req.doh.pending);
  if(result)
    infof(data, "DOH request %s\n", curl_easy_strerror(result));

  if(!data->req.doh.pending) {

    curl_slist_free_all(data->req.doh.headers);
    data->req.doh.headers = ((void*)0);
    Curl_expire(data, 0, EXPIRE_RUN_NOW);
  }
  return 0;
}
