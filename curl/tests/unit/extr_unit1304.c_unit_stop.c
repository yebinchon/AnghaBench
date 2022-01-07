
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Curl_safefree (int ) ;
 int login ;
 int password ;

__attribute__((used)) static void unit_stop(void)
{
  Curl_safefree(password);
  Curl_safefree(login);
}
