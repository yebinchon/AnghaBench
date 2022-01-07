
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int _L ;
 int _N ;
 int _P ;
 int _S ;
 int _U ;
 int _X ;
 int* ascii ;

int Curl_isgraph(int c)
{
  if((c < 0) || (c >= 0x80) || (c == ' '))
    return FALSE;
  return (ascii[c] & (_N|_X|_U|_L|_P|_S));
}
