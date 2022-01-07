
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curl_httppost {int dummy; } ;
typedef int curl_formget_callback ;
struct TYPE_2__ {unsigned int ccsid; void* arg; int append; } ;
typedef TYPE_1__ cfcdata ;


 int Curl_formget_callback_ccsid ;
 int curl_formget (struct curl_httppost*,void*,int ) ;

int
curl_formget_ccsid(struct curl_httppost *form, void *arg,
                   curl_formget_callback append, unsigned int ccsid)

{
  cfcdata lcfc;

  lcfc.append = append;
  lcfc.arg = arg;
  lcfc.ccsid = ccsid;
  return curl_formget(form, (void *) &lcfc, Curl_formget_callback_ccsid);
}
