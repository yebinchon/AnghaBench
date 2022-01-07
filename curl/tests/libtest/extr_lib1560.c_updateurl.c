
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLUcode ;
typedef scalar_t__ CURLUPart ;
typedef int CURLU ;


 int CURLUE_OK ;
 scalar_t__ CURLUPART_ZONEID ;
 int curl_url_set (int *,scalar_t__,char*,unsigned int) ;
 int fprintf (int ,char*,char*,...) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ part2id (char*) ;
 int sscanf (char*,char*,char*,char*) ;
 int stderr ;
 char* strchr (char const*,char) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static CURLUcode updateurl(CURLU *u, const char *cmd, unsigned int setflags)
{
  const char *p = cmd;
  CURLUcode uc;


  while(p) {
    char *e = strchr(p, ',');
    if(e) {
      size_t n = e-p;
      char buf[80];
      char part[80];
      char value[80];
      memcpy(buf, p, n);
      buf[n] = 0;
      if(2 == sscanf(buf, "%79[^=]=%79[^,]", part, value)) {
        CURLUPart what = part2id(part);




        if(what > CURLUPART_ZONEID)
          fprintf(stderr, "UNKNOWN part '%s'\n", part);

        if(!strcmp("NULL", value))
          uc = curl_url_set(u, what, ((void*)0), setflags);
        else if(!strcmp("\"\"", value))
          uc = curl_url_set(u, what, "", setflags);
        else
          uc = curl_url_set(u, what, value, setflags);
        if(uc)
          return uc;
      }
      p = e + 1;
      continue;
    }
    break;
  }
  return CURLUE_OK;
}
