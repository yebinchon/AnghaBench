
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char Curl_raw_toupper(char in)
{

  if(in >= 'a' && in <= 'z')
    return (char)('A' + in - 'a');
  return in;
}
