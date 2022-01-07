
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* userpwd; } ;
struct connectdata {int oauth_bearer; TYPE_1__ allocptr; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 char* aprintf (char*,int ) ;
 int free (char*) ;

__attribute__((used)) static CURLcode http_output_bearer(struct connectdata *conn)
{
  char **userp;
  CURLcode result = CURLE_OK;

  userp = &conn->allocptr.userpwd;
  free(*userp);
  *userp = aprintf("Authorization: Bearer %s\r\n",
                   conn->oauth_bearer);

  if(!*userp) {
    result = CURLE_OUT_OF_MEMORY;
    goto fail;
  }

  fail:
  return result;
}
