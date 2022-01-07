
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;


 int snprintf (char*,int,char*,int ,char*) ;
 int strcpy (char*,char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void do_counters(char *str)
{
 static int counter_id = -1, counter;
 char buff[1024];
 char *s = str;

 while ((s = strstr(s, "@@")))
 {
  if (s[2] < '0' || s[2] > '9') { s++; continue; }

  if (counter_id != s[2] - '0') {
   counter_id = s[2] - '0';
   counter = 1;
  }
  snprintf(buff, sizeof(buff), "%i%s", counter++, s + 3);
  strcpy(s, buff);
 }
}
