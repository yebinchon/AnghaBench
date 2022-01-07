
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Curl_gethostname (char*,int) ;
 int HOSTNAME_MAX ;
 int printf (char*,...) ;
 scalar_t__ strncmp (char*,char*,int) ;

int main(int argc, char *argv[])
{
  char buff[HOSTNAME_MAX];
  if(argc != 2) {
    printf("Usage: %s EXPECTED_HOSTNAME\n", argv[0]);
    return 1;
  }

  if(Curl_gethostname(buff, HOSTNAME_MAX)) {
    printf("Curl_gethostname() failed\n");
    return 1;
  }


  if(strncmp(buff, argv[1], HOSTNAME_MAX)) {
    printf("got unexpected host name back, LD_PRELOAD failed\n");
    return 1;
  }
  return 0;
}
