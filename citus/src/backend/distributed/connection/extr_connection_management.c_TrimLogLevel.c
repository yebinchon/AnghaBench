
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pchomp (char const*) ;
 size_t strlen (char*) ;

char *
TrimLogLevel(const char *message)
{
 char *chompedMessage = pchomp(message);
 size_t n;

 n = 0;
 while (n < strlen(chompedMessage) && chompedMessage[n] != ':')
 {
  n++;
 }

 do {
  n++;
 } while (n < strlen(chompedMessage) && chompedMessage[n] == ' ');

 return chompedMessage + n;
}
