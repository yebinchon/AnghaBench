
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timebuf ;
typedef scalar_t__ time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; } ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct libtest_trace_cfg {int nohex; scalar_t__ tracetime; } ;
typedef int curl_infotype ;
typedef int CURL ;
 scalar_t__ epoch_offset ;
 int fprintf (int ,char*,char*,char*) ;
 int known_offset ;
 int libtest_debug_dump (char*,char const*,int ,unsigned char*,size_t,int ) ;
 struct tm* localtime (scalar_t__*) ;
 int msnprintf (char*,int,char*,int ,int ,int ,long) ;
 int stderr ;
 scalar_t__ time (int *) ;
 struct timeval tutil_tvnow () ;

int libtest_debug_cb(CURL *handle, curl_infotype type,
                     unsigned char *data, size_t size,
                     void *userp)
{

  struct libtest_trace_cfg *trace_cfg = userp;
  const char *text;
  struct timeval tv;
  char timebuf[20];
  char *timestr;
  time_t secs;

  (void)handle;

  timebuf[0] = '\0';
  timestr = &timebuf[0];

  if(trace_cfg->tracetime) {
    struct tm *now;
    tv = tutil_tvnow();
    if(!known_offset) {
      epoch_offset = time(((void*)0)) - tv.tv_sec;
      known_offset = 1;
    }
    secs = epoch_offset + tv.tv_sec;
    now = localtime(&secs);
    msnprintf(timebuf, sizeof(timebuf), "%02d:%02d:%02d.%06ld ",
              now->tm_hour, now->tm_min, now->tm_sec, (long)tv.tv_usec);
  }

  switch(type) {
  case 128:
    fprintf(stderr, "%s== Info: %s", timestr, (char *)data);

  default:
    return 0;

  case 131:
    text = "=> Send header";
    break;
  case 133:
    text = "=> Send data";
    break;
  case 129:
    text = "=> Send SSL data";
    break;
  case 132:
    text = "<= Recv header";
    break;
  case 134:
    text = "<= Recv data";
    break;
  case 130:
    text = "<= Recv SSL data";
    break;
  }

  libtest_debug_dump(timebuf, text, stderr, data, size, trace_cfg->nohex);
  return 0;
}
