
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct OperationConfig {int global; } ;
typedef size_t HttpReq ;


 scalar_t__ curl_strequal (char*,char const*) ;
 int notef (int ,char*,char const*) ;
 int warnf (int ,char*) ;

void customrequest_helper(struct OperationConfig *config, HttpReq req,
                          char *method)
{

  const char *dflt[]= {
    "GET",
    "GET",
    "HEAD",
    "POST",
    "POST"
  };

  if(!method)
    ;
  else if(curl_strequal(method, dflt[req])) {
    notef(config->global, "Unnecessary use of -X or --request, %s is already "
          "inferred.\n", dflt[req]);
  }
  else if(curl_strequal(method, "head")) {
    warnf(config->global,
          "Setting custom HTTP method to HEAD with -X/--request may not work "
          "the way you want. Consider using -I/--head instead.\n");
  }
}
