
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct part {char* member_1; int part; scalar_t__ name; int member_0; } ;
typedef int buf ;
typedef scalar_t__ CURLUcode ;
typedef int CURLU ;


 int CURLUPART_FRAGMENT ;
 int CURLUPART_HOST ;
 int CURLUPART_OPTIONS ;
 int CURLUPART_PASSWORD ;
 int CURLUPART_PATH ;
 int CURLUPART_PORT ;
 int CURLUPART_QUERY ;
 int CURLUPART_SCHEME ;
 int CURLUPART_USER ;
 int curl_free (char*) ;
 scalar_t__ curl_url_get (int *,int ,char**,unsigned int) ;
 int fprintf (int ,char*,char const*,char const*,char*) ;
 int msnprintf (char*,size_t,char*,char*,...) ;
 int stderr ;
 scalar_t__ strcmp (char*,char const*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int checkparts(CURLU *u, const char *in, const char *wanted,
                      unsigned int getflags)
{
  int i;
  CURLUcode rc;
  char buf[256];
  char *bufp = &buf[0];
  size_t len = sizeof(buf);
  struct part parts[] = {
    {CURLUPART_SCHEME, "scheme"},
    {CURLUPART_USER, "user"},
    {CURLUPART_PASSWORD, "password"},
    {CURLUPART_OPTIONS, "options"},
    {CURLUPART_HOST, "host"},
    {CURLUPART_PORT, "port"},
    {CURLUPART_PATH, "path"},
    {CURLUPART_QUERY, "query"},
    {CURLUPART_FRAGMENT, "fragment"},
    {0, ((void*)0)}
  };
  buf[0] = 0;

  for(i = 0; parts[i].name; i++) {
    char *p = ((void*)0);
    size_t n;
    rc = curl_url_get(u, parts[i].part, &p, getflags);
    if(!rc && p) {
      msnprintf(bufp, len, "%s%s", buf[0]?" | ":"", p);
    }
    else
      msnprintf(bufp, len, "%s[%d]", buf[0]?" | ":"", (int)rc);

    n = strlen(bufp);
    bufp += n;
    len -= n;
    curl_free(p);
  }
  if(strcmp(buf, wanted)) {
    fprintf(stderr, "in: %s\nwanted: %s\ngot:    %s\n", in, wanted, buf);
    return 1;
  }
  return 0;
}
