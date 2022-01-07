
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct ProgressData {scalar_t__ initial_size; scalar_t__ prev; int width; struct timeval prevtime; int out; scalar_t__ calls; } ;
typedef int format ;
typedef scalar_t__ curl_off_t ;


 scalar_t__ CURL_OFF_T_MAX ;
 int MAX_BARLENGTH ;
 int fflush (int ) ;
 int fly (struct ProgressData*,int) ;
 int fprintf (int ,char*,char*,double) ;
 int memset (char*,char,int) ;
 int msnprintf (char*,int,char*,int) ;
 long tvdiff (struct timeval,struct timeval) ;
 struct timeval tvnow () ;

int tool_progress_cb(void *clientp,
                     curl_off_t dltotal, curl_off_t dlnow,
                     curl_off_t ultotal, curl_off_t ulnow)
{



  struct timeval now = tvnow();
  struct ProgressData *bar = (struct ProgressData *)clientp;
  curl_off_t total;
  curl_off_t point;




  if(bar->initial_size < 0 ||
     ((CURL_OFF_T_MAX - bar->initial_size) < (dltotal + ultotal)))
    total = CURL_OFF_T_MAX;
  else
    total = dltotal + ultotal + bar->initial_size;



  if(bar->initial_size < 0 ||
     ((CURL_OFF_T_MAX - bar->initial_size) < (dlnow + ulnow)))
    point = CURL_OFF_T_MAX;
  else
    point = dlnow + ulnow + bar->initial_size;

  if(bar->calls) {

    if(total) {

      if(bar->prev == point)

        return 0;
      else if((tvdiff(now, bar->prevtime) < 100L) && point < total)

        return 0;
    }
    else {

      if(tvdiff(now, bar->prevtime) < 100L)

        return 0;
      fly(bar, point != bar->prev);
    }
  }


  bar->calls++;

  if((total > 0) && (point != bar->prev)) {
    char line[MAX_BARLENGTH + 1];
    char format[40];
    double frac;
    double percent;
    int barwidth;
    int num;
    if(point > total)

      total = point;

    frac = (double)point / (double)total;
    percent = frac * 100.0;
    barwidth = bar->width - 7;
    num = (int) (((double)barwidth) * frac);
    if(num > MAX_BARLENGTH)
      num = MAX_BARLENGTH;
    memset(line, '#', num);
    line[num] = '\0';
    msnprintf(format, sizeof(format), "\r%%-%ds %%5.1f%%%%", barwidth);
    fprintf(bar->out, format, line, percent);
  }
  fflush(bar->out);
  bar->prev = point;
  bar->prevtime = now;

  return 0;
}
