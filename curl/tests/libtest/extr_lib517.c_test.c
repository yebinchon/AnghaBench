
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {char* input; scalar_t__ output; } ;


 scalar_t__ curl_getdate (char*,int *) ;
 TYPE_1__* dates ;
 int printf (char*,char*,scalar_t__,scalar_t__) ;

int test(char *URL)
{
  int i;
  int error = 0;

  (void)URL;

  for(i = 0; dates[i].input; i++) {
    time_t out = curl_getdate(dates[i].input, ((void*)0));
    if(out != dates[i].output) {
      printf("WRONGLY %s => %ld (instead of %ld)\n",
             dates[i].input, out, dates[i].output);
      error++;
    }
  }

  return error;
}
