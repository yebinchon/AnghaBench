
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timebuf ;
typedef scalar_t__ time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct input {int num; } ;
typedef int curl_infotype ;
typedef int CURL ;
 int dump (char const*,int,unsigned char*,size_t,int) ;
 int fprintf (int ,char*,char*,int,char*) ;
 int gettimeofday (struct timeval*,int *) ;
 struct tm* localtime (scalar_t__*) ;
 int snprintf (char*,int,char*,int,int,int,long) ;
 int stderr ;
 scalar_t__ time (int *) ;

__attribute__((used)) static
int my_trace(CURL *handle, curl_infotype type,
             char *data, size_t size,
             void *userp)
{
  char timebuf[60];
  const char *text;
  struct input *i = (struct input *)userp;
  int num = i->num;
  static time_t epoch_offset;
  static int known_offset;
  struct timeval tv;
  time_t secs;
  struct tm *now;
  (void)handle;

  gettimeofday(&tv, ((void*)0));
  if(!known_offset) {
    epoch_offset = time(((void*)0)) - tv.tv_sec;
    known_offset = 1;
  }
  secs = epoch_offset + tv.tv_sec;
  now = localtime(&secs);
  snprintf(timebuf, sizeof(timebuf), "%02d:%02d:%02d.%06ld",
           now->tm_hour, now->tm_min, now->tm_sec, (long)tv.tv_usec);

  switch(type) {
  case 128:
    fprintf(stderr, "%s [%d] Info: %s", timebuf, num, data);

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

  dump(text, num, (unsigned char *)data, size, 1);
  return 0;
}
