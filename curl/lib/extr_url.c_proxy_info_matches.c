
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct proxy_info {scalar_t__ proxytype; scalar_t__ port; TYPE_1__ host; } ;


 scalar_t__ Curl_safe_strcasecompare (int ,int ) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool
proxy_info_matches(const struct proxy_info* data,
                   const struct proxy_info* needle)
{
  if((data->proxytype == needle->proxytype) &&
     (data->port == needle->port) &&
     Curl_safe_strcasecompare(data->host.name, needle->host.name))
    return TRUE;

  return FALSE;
}
