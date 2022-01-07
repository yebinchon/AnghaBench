
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curl_slist {int dummy; } ;
struct OperationConfig {TYPE_1__* global; } ;
typedef int hdrbuf ;
struct TYPE_2__ {int errors; } ;
typedef int FILE ;



 int FALSE ;
 scalar_t__ ISSPACE (char) ;
 int TRUE ;
 int errno ;
 int ferror (int *) ;
 int fprintf (int ,char*,...) ;
 int getc (int *) ;
 scalar_t__ slist_append (struct curl_slist**,char*) ;
 char* strerror (int ) ;
 int warnf (TYPE_1__*,char*,char const*,int) ;

__attribute__((used)) static int read_field_headers(struct OperationConfig *config,
                              const char *filename, FILE *fp,
                              struct curl_slist **pheaders)
{
  size_t hdrlen = 0;
  size_t pos = 0;
  bool incomment = FALSE;
  int lineno = 1;
  char hdrbuf[999];

  for(;;) {
    int c = getc(fp);
    if(c == 128 || (!pos && !ISSPACE(c))) {

      while(hdrlen && ISSPACE(hdrbuf[hdrlen - 1]))
        hdrlen--;
      if(hdrlen) {
        hdrbuf[hdrlen] = '\0';
        if(slist_append(pheaders, hdrbuf)) {
          fprintf(config->global->errors,
                  "Out of memory for field headers!\n");
          return -1;
        }
        hdrlen = 0;
      }
    }

    switch(c) {
    case 128:
      if(ferror(fp)) {
        fprintf(config->global->errors,
                "Header file %s read error: %s\n", filename, strerror(errno));
        return -1;
      }
      return 0;
    case '\r':
      continue;
    case '\n':
      pos = 0;
      incomment = FALSE;
      lineno++;
      continue;
    case '#':
      if(!pos)
        incomment = TRUE;
      break;
    }

    pos++;
    if(!incomment) {
      if(hdrlen == sizeof(hdrbuf) - 1) {
        warnf(config->global, "File %s line %d: header too long (truncated)\n",
              filename, lineno);
        c = ' ';
      }
      if(hdrlen <= sizeof(hdrbuf) - 1)
        hdrbuf[hdrlen++] = (char) c;
    }
  }

}
