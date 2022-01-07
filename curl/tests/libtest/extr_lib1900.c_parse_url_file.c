
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t blacklist_num_servers ;
 size_t blacklist_num_sites ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fscanf (int *,char*,...) ;
 size_t num_handles ;
 int ** server_blacklist ;
 int ** site_blacklist ;
 void* strdup (char*) ;
 void** urlstring ;
 int* urltime ;

__attribute__((used)) static int parse_url_file(const char *filename)
{
  FILE *f;
  int filetime;
  char buf[200];

  num_handles = 0;
  blacklist_num_sites = 0;
  blacklist_num_servers = 0;

  f = fopen(filename, "rb");
  if(!f)
    return 0;

  while(!feof(f)) {
    if(fscanf(f, "%d %199s\n", &filetime, buf)) {
      urltime[num_handles] = filetime;
      urlstring[num_handles] = strdup(buf);
      num_handles++;
      continue;
    }

    if(fscanf(f, "blacklist_site %199s\n", buf)) {
      site_blacklist[blacklist_num_sites] = strdup(buf);
      blacklist_num_sites++;
      continue;
    }

    break;
  }
  fclose(f);

  site_blacklist[blacklist_num_sites] = ((void*)0);
  server_blacklist[blacklist_num_servers] = ((void*)0);
  return num_handles;
}
