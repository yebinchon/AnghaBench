
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ resolve; int mimepost; scalar_t__* str; scalar_t__ postfields; scalar_t__ postfieldsize; } ;
struct TYPE_3__ {scalar_t__ resolve; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ change; } ;
typedef enum dupstring { ____Placeholder_dupstring } dupstring ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ Curl_memdup (scalar_t__,int ) ;
 scalar_t__ Curl_mime_duppart (int *,int *) ;
 int Curl_mime_initpart (int *,struct Curl_easy*) ;
 scalar_t__ Curl_setstropt (scalar_t__*,scalar_t__) ;
 int STRING_COPYPOSTFIELDS ;
 int STRING_LAST ;
 int STRING_LASTZEROTERMINATED ;
 int curlx_sotouz (scalar_t__) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static CURLcode dupset(struct Curl_easy *dst, struct Curl_easy *src)
{
  CURLcode result = CURLE_OK;
  enum dupstring i;



  dst->set = src->set;
  Curl_mime_initpart(&dst->set.mimepost, dst);


  memset(dst->set.str, 0, STRING_LAST * sizeof(char *));


  for(i = (enum dupstring)0; i< STRING_LASTZEROTERMINATED; i++) {
    result = Curl_setstropt(&dst->set.str[i], src->set.str[i]);
    if(result)
      return result;
  }


  i = STRING_COPYPOSTFIELDS;
  if(src->set.postfieldsize && src->set.str[i]) {

    dst->set.str[i] = Curl_memdup(src->set.str[i],
                                  curlx_sotouz(src->set.postfieldsize));
    if(!dst->set.str[i])
      return CURLE_OUT_OF_MEMORY;

    dst->set.postfields = dst->set.str[i];
  }


  result = Curl_mime_duppart(&dst->set.mimepost, &src->set.mimepost);

  if(src->set.resolve)
    dst->change.resolve = dst->set.resolve;

  return result;
}
