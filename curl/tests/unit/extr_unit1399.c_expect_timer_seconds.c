
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t_starttransfer; int t_pretransfer; int t_appconnect; int t_connect; int t_nslookup; } ;
struct Curl_easy {TYPE_1__ progress; } ;
typedef int msg ;


 int fail_unless (int ,char*) ;
 int msnprintf (char*,int,char*,int) ;
 int usec_matches_seconds (int ,int) ;

__attribute__((used)) static void expect_timer_seconds(struct Curl_easy *data, int seconds)
{
  char msg[64];
  msnprintf(msg, sizeof(msg), "about %d seconds should have passed", seconds);
  fail_unless(usec_matches_seconds(data->progress.t_nslookup, seconds), msg);
  fail_unless(usec_matches_seconds(data->progress.t_connect, seconds), msg);
  fail_unless(usec_matches_seconds(data->progress.t_appconnect, seconds), msg);
  fail_unless(usec_matches_seconds(data->progress.t_pretransfer, seconds),
              msg);
  fail_unless(usec_matches_seconds(data->progress.t_starttransfer, seconds),
              msg);
}
