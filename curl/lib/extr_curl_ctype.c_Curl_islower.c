
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int _L ;
 int* ascii ;

int Curl_islower(int c)
{
  if((c < 0) || (c >= 0x80))
    return FALSE;
  return (ascii[c] & (_L));
}
