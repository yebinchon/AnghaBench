
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct OperationConfig {int global; } ;
typedef size_t HttpReq ;


 size_t HTTPREQ_UNSPEC ;
 int warnf (int ,char*,char const*,char const*) ;

int SetHTTPrequest(struct OperationConfig *config, HttpReq req, HttpReq *store)
{

  const char *reqname[]= {
    "",
    "GET (-G, --get)",
    "HEAD (-I, --head)",
    "multipart formpost (-F, --form)",
    "POST (-d, --data)"
  };

  if((*store == HTTPREQ_UNSPEC) ||
     (*store == req)) {
    *store = req;
    return 0;
  }
  warnf(config->global, "You can only select one HTTP request method! "
        "You asked for both %s and %s.\n",
        reqname[req], reqname[*store]);

  return 1;
}
