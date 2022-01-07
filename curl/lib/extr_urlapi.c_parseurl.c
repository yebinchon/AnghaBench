
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_URL {int dummy; } ;
typedef scalar_t__ CURLUcode ;
typedef int CURLU ;


 int free_urlhandle (int *) ;
 int memset (int *,int ,int) ;
 scalar_t__ seturl (char const*,int *,unsigned int) ;

__attribute__((used)) static CURLUcode parseurl(const char *url, CURLU *u, unsigned int flags)
{
  CURLUcode result = seturl(url, u, flags);
  if(result) {
    free_urlhandle(u);
    memset(u, 0, sizeof(struct Curl_URL));
  }
  return result;
}
