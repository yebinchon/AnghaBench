
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Curl_safefree (char*) ;
 int cleanarg (char*) ;
 int parse_cert_parameter (char*,char**,char**) ;

__attribute__((used)) static void
GetFileAndPassword(char *nextarg, char **file, char **password)
{
  char *certname, *passphrase;
  parse_cert_parameter(nextarg, &certname, &passphrase);
  Curl_safefree(*file);
  *file = certname;
  if(passphrase) {
    Curl_safefree(*password);
    *password = passphrase;
  }
  cleanarg(nextarg);
}
