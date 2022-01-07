
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ name; } ;
typedef TYPE_1__ mime_encoder ;
struct TYPE_6__ {TYPE_1__ const* encoder; } ;
typedef TYPE_2__ curl_mimepart ;
typedef int CURLcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_OK ;
 TYPE_1__* encoders ;
 scalar_t__ strcasecompare (char const*,scalar_t__) ;

CURLcode curl_mime_encoder(curl_mimepart *part, const char *encoding)
{
  CURLcode result = CURLE_BAD_FUNCTION_ARGUMENT;
  const mime_encoder *mep;

  if(!part)
    return result;

  part->encoder = ((void*)0);

  if(!encoding)
    return CURLE_OK;

  for(mep = encoders; mep->name; mep++)
    if(strcasecompare(encoding, mep->name)) {
      part->encoder = mep;
      result = CURLE_OK;
    }

  return result;
}
