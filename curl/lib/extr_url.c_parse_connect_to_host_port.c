
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int CURLE_NOT_BUILT_IN ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 scalar_t__ ISALPHA (char) ;
 scalar_t__ ISXDIGIT (char) ;
 int failf (struct Curl_easy*,char*) ;
 int free (char*) ;
 int infof (struct Curl_easy*,char*,...) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static CURLcode parse_connect_to_host_port(struct Curl_easy *data,
                                           const char *host,
                                           char **hostname_result,
                                           int *port_result)
{
  char *host_dup;
  char *hostptr;
  char *host_portno;
  char *portptr;
  int port = -1;





  *hostname_result = ((void*)0);
  *port_result = -1;

  if(!host || !*host)
    return CURLE_OK;

  host_dup = strdup(host);
  if(!host_dup)
    return CURLE_OUT_OF_MEMORY;

  hostptr = host_dup;


  portptr = hostptr;


  if(*hostptr == '[') {
    failf(data, "Use of IPv6 in *_CONNECT_TO without IPv6 support built-in!");
    free(host_dup);
    return CURLE_NOT_BUILT_IN;

  }


  host_portno = strchr(portptr, ':');
  if(host_portno) {
    char *endp = ((void*)0);
    *host_portno = '\0';
    host_portno++;
    if(*host_portno) {
      long portparse = strtol(host_portno, &endp, 10);
      if((endp && *endp) || (portparse < 0) || (portparse > 65535)) {
        infof(data, "No valid port number in connect to host string (%s)\n",
              host_portno);
        hostptr = ((void*)0);
        port = -1;
      }
      else
        port = (int)portparse;
    }
  }


  if(hostptr) {
    *hostname_result = strdup(hostptr);
    if(!*hostname_result) {
      free(host_dup);
      return CURLE_OUT_OF_MEMORY;
    }
  }

  *port_result = port;

  free(host_dup);
  return CURLE_OK;
}
