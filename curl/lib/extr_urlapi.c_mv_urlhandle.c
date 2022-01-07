
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_URL {int dummy; } ;


 int free (struct Curl_URL*) ;
 int free_urlhandle (struct Curl_URL*) ;

__attribute__((used)) static void mv_urlhandle(struct Curl_URL *from,
                         struct Curl_URL *to)
{
  free_urlhandle(to);
  *to = *from;
  free(from);
}
