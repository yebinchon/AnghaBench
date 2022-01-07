
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef scalar_t__ curl_socklen_t ;


 int EAI_MEMORY ;
 int QadrtConvertE2A (char*,char*,scalar_t__,int ) ;
 int free (char*) ;
 int getnameinfo (struct sockaddr const*,scalar_t__,char*,scalar_t__,char*,scalar_t__,int) ;
 char* malloc (scalar_t__) ;
 int strlen (char*) ;

int
Curl_getnameinfo_a(const struct sockaddr * sa, curl_socklen_t salen,
              char * nodename, curl_socklen_t nodenamelen,
              char * servname, curl_socklen_t servnamelen,
              int flags)

{
  char *enodename = ((void*)0);
  char *eservname = ((void*)0);
  int status;

  if(nodename && nodenamelen) {
    enodename = malloc(nodenamelen);
    if(!enodename)
      return EAI_MEMORY;
  }

  if(servname && servnamelen) {
    eservname = malloc(servnamelen);
    if(!eservname) {
      free(enodename);
      return EAI_MEMORY;
    }
  }

  status = getnameinfo(sa, salen, enodename, nodenamelen,
                       eservname, servnamelen, flags);

  if(!status) {
    int i;
    if(enodename) {
      i = QadrtConvertE2A(nodename, enodename,
        nodenamelen - 1, strlen(enodename));
      nodename[i] = '\0';
      }

    if(eservname) {
      i = QadrtConvertE2A(servname, eservname,
        servnamelen - 1, strlen(eservname));
      servname[i] = '\0';
      }
    }

  free(enodename);
  free(eservname);
  return status;
}
