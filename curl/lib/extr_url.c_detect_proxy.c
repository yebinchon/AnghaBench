
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {int data; TYPE_1__* handler; } ;
typedef int proxy_env ;
struct TYPE_2__ {char* scheme; } ;


 int Curl_strntoupper (char*,char*,int) ;
 char* curl_getenv (char*) ;
 int infof (int ,char*,char*,char*) ;
 int strcasecompare (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ tolower (int) ;

__attribute__((used)) static char *detect_proxy(struct connectdata *conn)
{
  char *proxy = ((void*)0);
  char proxy_env[128];
  const char *protop = conn->handler->scheme;
  char *envp = proxy_env;
  char *prox;


  while(*protop)
    *envp++ = (char)tolower((int)*protop++);


  strcpy(envp, "_proxy");


  prox = curl_getenv(proxy_env);
  if(!prox && !strcasecompare("http_proxy", proxy_env)) {

    Curl_strntoupper(proxy_env, proxy_env, sizeof(proxy_env));
    prox = curl_getenv(proxy_env);
  }

  envp = proxy_env;
  if(prox) {
    proxy = prox;
  }
  else {
    envp = (char *)"all_proxy";
    proxy = curl_getenv(envp);
    if(!proxy) {
      envp = (char *)"ALL_PROXY";
      proxy = curl_getenv(envp);
    }
  }
  if(proxy)
    infof(conn->data, "Uses proxy env variable %s == '%s'\n", envp, proxy);

  return proxy;
}
