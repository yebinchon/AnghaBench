
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int urlbuf ;
struct TYPE_3__ {int flags; scalar_t__ result; } ;
typedef TYPE_1__ testparams ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 int CURLOPT_FAILONERROR ;
 int CURLOPT_RANGE ;
 int CURLOPT_RESUME_FROM ;
 int CURLOPT_URL ;
 int F_CONTENTRANGE ;
 int F_FAIL ;
 int F_HTTP416 ;
 int F_IGNOREBODY ;
 int F_RESUME ;
 scalar_t__ curl_easy_perform (int *) ;
 int fprintf (int ,char*,char*,char*,char*,char*,...) ;
 scalar_t__ hasbody ;
 int msnprintf (char*,int,char*,char const*,unsigned int) ;
 int stderr ;
 int test_setopt (int *,int ,...) ;

__attribute__((used)) static int onetest(CURL *curl, const char *url, const testparams *p)
{
  CURLcode res;
  unsigned int replyselector;
  char urlbuf[256];

  replyselector = (p->flags & F_CONTENTRANGE)? 1: 0;
  if(p->flags & F_HTTP416)
    replyselector += 2;
  msnprintf(urlbuf, sizeof(urlbuf), "%s%04u", url, replyselector);
  test_setopt(curl, CURLOPT_URL, urlbuf);
  test_setopt(curl, CURLOPT_RESUME_FROM, (p->flags & F_RESUME)? 3: 0);
  test_setopt(curl, CURLOPT_RANGE, !(p->flags & F_RESUME)?
                                   "3-1000000": (char *) ((void*)0));
  test_setopt(curl, CURLOPT_FAILONERROR, (p->flags & F_FAIL)? 1: 0);
  hasbody = 0;
  res = curl_easy_perform(curl);
  if(res != p->result) {
    fprintf(stderr, "bad error code (%d): resume=%s, fail=%s, http416=%s, "
                    "content-range=%s, expected=%d\n", res,
                    (p->flags & F_RESUME)? "yes": "no",
                    (p->flags & F_FAIL)? "yes": "no",
                    (p->flags & F_HTTP416)? "yes": "no",
                    (p->flags & F_CONTENTRANGE)? "yes": "no",
                    p->result);
    return 1;
  }
  if(hasbody && (p->flags & F_IGNOREBODY)) {
    fprintf(stderr, "body should be ignored and is not: resume=%s, fail=%s, "
                    "http416=%s, content-range=%s\n",
                    (p->flags & F_RESUME)? "yes": "no",
                    (p->flags & F_FAIL)? "yes": "no",
                    (p->flags & F_HTTP416)? "yes": "no",
                    (p->flags & F_CONTENTRANGE)? "yes": "no");
    return 1;
  }
  return 0;

  test_cleanup:

  return 1;
}
