
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ipv6_ip; } ;
struct TYPE_3__ {int name; } ;
struct connectdata {long remote_port; TYPE_2__ bits; TYPE_1__ host; } ;
struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int FALSE ;
 int TRUE ;
 char* aprintf (char*,char*,int ,char*) ;
 int free (char*) ;
 int parse_connect_to_host_port (struct Curl_easy*,char const*,char**,int*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char*) ;
 int strncasecompare (char const*,char*,size_t) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static CURLcode parse_connect_to_string(struct Curl_easy *data,
                                        struct connectdata *conn,
                                        const char *conn_to_host,
                                        char **host_result,
                                        int *port_result)
{
  CURLcode result = CURLE_OK;
  const char *ptr = conn_to_host;
  int host_match = FALSE;
  int port_match = FALSE;

  *host_result = ((void*)0);
  *port_result = -1;

  if(*ptr == ':') {

    host_match = TRUE;
    ptr++;
  }
  else {

    size_t hostname_to_match_len;
    char *hostname_to_match = aprintf("%s%s%s",
                                      conn->bits.ipv6_ip ? "[" : "",
                                      conn->host.name,
                                      conn->bits.ipv6_ip ? "]" : "");
    if(!hostname_to_match)
      return CURLE_OUT_OF_MEMORY;
    hostname_to_match_len = strlen(hostname_to_match);
    host_match = strncasecompare(ptr, hostname_to_match,
                                 hostname_to_match_len);
    free(hostname_to_match);
    ptr += hostname_to_match_len;

    host_match = host_match && *ptr == ':';
    ptr++;
  }

  if(host_match) {
    if(*ptr == ':') {

      port_match = TRUE;
      ptr++;
    }
    else {

      char *ptr_next = strchr(ptr, ':');
      if(ptr_next) {
        char *endp = ((void*)0);
        long port_to_match = strtol(ptr, &endp, 10);
        if((endp == ptr_next) && (port_to_match == conn->remote_port)) {
          port_match = TRUE;
          ptr = ptr_next + 1;
        }
      }
    }
  }

  if(host_match && port_match) {

    result = parse_connect_to_host_port(data, ptr, host_result, port_result);
  }

  return result;
}
