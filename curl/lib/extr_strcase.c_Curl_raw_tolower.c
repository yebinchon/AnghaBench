
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char Curl_raw_tolower(char in)
{

  if(in >= 'A' && in <= 'Z')
    return (char)('a' + in - 'A');
  return in;
}
