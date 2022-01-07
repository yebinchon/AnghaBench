
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_29__ {size_t max_concurrent_streams; } ;
struct http_conn {TYPE_9__ settings; } ;
struct curl_llist_element {struct curl_llist_element* next; struct connectdata* ptr; } ;
struct TYPE_28__ {struct http_conn httpc; } ;
struct TYPE_27__ {scalar_t__ httpproxy; scalar_t__ socksproxy; scalar_t__ conn_to_host; scalar_t__ conn_to_port; scalar_t__ tunnel_proxy; scalar_t__ multiplex; scalar_t__ close; scalar_t__ protoconnstart; scalar_t__ connect_only; scalar_t__ proxy_user_passwd; } ;
struct TYPE_20__ {scalar_t__ proxytype; scalar_t__ passwd; scalar_t__ user; } ;
struct TYPE_25__ {int name; } ;
struct TYPE_24__ {int name; } ;
struct connectdata {scalar_t__* sock; scalar_t__ abstract_unix_socket; scalar_t__ localport; scalar_t__ localportrange; scalar_t__ conn_to_port; scalar_t__ remote_port; scalar_t__ http_ntlm_state; scalar_t__ proxy_ntlm_state; struct Curl_easy* data; TYPE_8__ proto; TYPE_7__ bits; TYPE_14__ http_proxy; scalar_t__ passwd; scalar_t__ user; int connection_id; TYPE_6__* ssl; int ssl_config; TYPE_13__* handler; TYPE_5__ host; TYPE_4__ conn_to_host; scalar_t__ tls_upgraded; scalar_t__ localdev; TYPE_3__* proxy_ssl; int proxy_ssl_config; TYPE_14__ socks_proxy; scalar_t__ unix_domain_socket; int * ip_addr_str; } ;
struct TYPE_22__ {struct curl_llist_element* head; } ;
struct connectbundle {scalar_t__ multiuse; TYPE_2__ conn_list; } ;
struct TYPE_16__ {scalar_t__ pipewait; } ;
struct TYPE_21__ {int want; } ;
struct TYPE_17__ {int want; } ;
struct TYPE_18__ {int conn_cache; TYPE_1__ authproxy; TYPE_11__ authhost; } ;
struct Curl_easy {scalar_t__ multi; TYPE_10__ set; TYPE_12__ state; } ;
struct TYPE_26__ {scalar_t__ state; } ;
struct TYPE_23__ {scalar_t__ state; } ;
struct TYPE_19__ {int protocol; int flags; int scheme; } ;


 scalar_t__ BUNDLE_MULTIPLEX ;
 scalar_t__ BUNDLE_NO_MULTIUSE ;
 scalar_t__ BUNDLE_UNKNOWN ;
 scalar_t__ CONN_INUSE (struct connectdata*) ;
 int CURLAUTH_NTLM ;
 int CURLAUTH_NTLM_WB ;
 scalar_t__ CURLPROXY_HTTPS ;
 scalar_t__ CURL_SOCKET_BAD ;
 struct connectbundle* Curl_conncache_find_bundle (struct connectdata*,int ,char const**) ;
 int Curl_conncache_unlock (struct Curl_easy*) ;
 int Curl_multiplex_wanted (scalar_t__) ;
 scalar_t__ Curl_resolver_asynch () ;
 int Curl_ssl_config_matches (int *,int *) ;
 int DEBUGF (int ) ;
 int FALSE ;
 size_t FIRSTSOCKET ;
 int IsMultiplexingPossible (struct Curl_easy*,struct connectdata*) ;
 scalar_t__ NTLMSTATE_NONE ;
 int PROTOPT_CREDSPERREQUEST ;
 int PROTOPT_SSL ;
 int PROTO_FAMILY_HTTP ;
 int TRUE ;
 int get_protocol_family (int) ;
 int infof (struct Curl_easy*,char*,...) ;
 int proxy_info_matches (TYPE_14__*,TYPE_14__*) ;
 scalar_t__ ssl_connection_complete ;
 scalar_t__ strcasecompare (int ,int ) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
ConnectionExists(struct Curl_easy *data,
                 struct connectdata *needle,
                 struct connectdata **usethis,
                 bool *force_reuse,
                 bool *waitpipe)
{
  struct connectdata *check;
  struct connectdata *chosen = 0;
  bool foundPendingCandidate = FALSE;
  bool canmultiplex = IsMultiplexingPossible(data, needle);
  struct connectbundle *bundle;
  const char *hostbundle;
  *force_reuse = FALSE;
  *waitpipe = FALSE;



  bundle = Curl_conncache_find_bundle(needle, data->state.conn_cache,
                                      &hostbundle);
  if(bundle) {

    struct curl_llist_element *curr;

    infof(data, "Found bundle for host %s: %p [%s]\n",
          hostbundle, (void *)bundle, (bundle->multiuse == BUNDLE_MULTIPLEX ?
                                       "can multiplex" : "serially"));


    if(canmultiplex) {
      if(bundle->multiuse == BUNDLE_UNKNOWN) {
        if(data->set.pipewait) {
          infof(data, "Server doesn't support multiplex yet, wait\n");
          *waitpipe = TRUE;
          Curl_conncache_unlock(data);
          return FALSE;
        }

        infof(data, "Server doesn't support multiplex (yet)\n");
        canmultiplex = FALSE;
      }
      if((bundle->multiuse == BUNDLE_MULTIPLEX) &&
         !Curl_multiplex_wanted(data->multi)) {
        infof(data, "Could multiplex, but not asked to!\n");
        canmultiplex = FALSE;
      }
      if(bundle->multiuse == BUNDLE_NO_MULTIUSE) {
        infof(data, "Can not multiplex, even if we wanted to!\n");
        canmultiplex = FALSE;
      }
    }

    curr = bundle->conn_list.head;
    while(curr) {
      bool match = FALSE;
      size_t multiplexed;





      check = curr->ptr;
      curr = curr->next;

      if(check->bits.connect_only)

        continue;

      multiplexed = CONN_INUSE(check) &&
        (bundle->multiuse == BUNDLE_MULTIPLEX);

      if(canmultiplex) {
        if(check->bits.protoconnstart && check->bits.close)
          continue;
      }
      else {
        if(multiplexed) {


          continue;
        }

        if(Curl_resolver_asynch()) {


          if(!check->ip_addr_str[0]) {
            infof(data,
                  "Connection #%ld is still name resolving, can't reuse\n",
                  check->connection_id);
            continue;
          }
        }

        if((check->sock[FIRSTSOCKET] == CURL_SOCKET_BAD) ||
           check->bits.close) {
          if(!check->bits.close)
            foundPendingCandidate = TRUE;


          infof(data, "Connection #%ld isn't open enough, can't reuse\n",
                check->connection_id);
          continue;
        }
      }
      if((needle->handler->flags&PROTOPT_SSL) !=
         (check->handler->flags&PROTOPT_SSL))

        if(get_protocol_family(check->handler->protocol) !=
           needle->handler->protocol || !check->tls_upgraded)

          continue;

      if(needle->bits.httpproxy != check->bits.httpproxy ||
         needle->bits.socksproxy != check->bits.socksproxy)
        continue;

      if(needle->bits.socksproxy && !proxy_info_matches(&needle->socks_proxy,
                                                        &check->socks_proxy))
        continue;

      if(needle->bits.conn_to_host != check->bits.conn_to_host)


        continue;

      if(needle->bits.conn_to_port != check->bits.conn_to_port)


        continue;

      if(needle->bits.httpproxy) {
        if(!proxy_info_matches(&needle->http_proxy, &check->http_proxy))
          continue;

        if(needle->bits.tunnel_proxy != check->bits.tunnel_proxy)
          continue;

        if(needle->http_proxy.proxytype == CURLPROXY_HTTPS) {

          if(needle->handler->flags&PROTOPT_SSL) {

            if(!Curl_ssl_config_matches(&needle->proxy_ssl_config,
                                        &check->proxy_ssl_config))
              continue;
            if(check->proxy_ssl[FIRSTSOCKET].state != ssl_connection_complete)
              continue;
          }
          else {
            if(!Curl_ssl_config_matches(&needle->ssl_config,
                                        &check->ssl_config))
              continue;
            if(check->ssl[FIRSTSOCKET].state != ssl_connection_complete)
              continue;
          }
        }
      }

      if(!canmultiplex && check->data)


        continue;

      if(CONN_INUSE(check) && check->data &&
         (check->data->multi != needle->data->multi))


        continue;

      if(needle->localdev || needle->localport) {
        if((check->localport != needle->localport) ||
           (check->localportrange != needle->localportrange) ||
           (needle->localdev &&
            (!check->localdev || strcmp(check->localdev, needle->localdev))))
          continue;
      }

      if(!(needle->handler->flags & PROTOPT_CREDSPERREQUEST)) {


        if(strcmp(needle->user, check->user) ||
           strcmp(needle->passwd, check->passwd)) {

          continue;
        }
      }

      if(!needle->bits.httpproxy || (needle->handler->flags&PROTOPT_SSL) ||
         needle->bits.tunnel_proxy) {




        if((strcasecompare(needle->handler->scheme, check->handler->scheme) ||
            (get_protocol_family(check->handler->protocol) ==
             needle->handler->protocol && check->tls_upgraded)) &&
           (!needle->bits.conn_to_host || strcasecompare(
            needle->conn_to_host.name, check->conn_to_host.name)) &&
           (!needle->bits.conn_to_port ||
             needle->conn_to_port == check->conn_to_port) &&
           strcasecompare(needle->host.name, check->host.name) &&
           needle->remote_port == check->remote_port) {



          if(needle->handler->flags & PROTOPT_SSL) {


            if(!Curl_ssl_config_matches(&needle->ssl_config,
                                        &check->ssl_config)) {
              DEBUGF(infof(data,
                           "Connection #%ld has different SSL parameters, "
                           "can't reuse\n",
                           check->connection_id));
              continue;
            }
            if(check->ssl[FIRSTSOCKET].state != ssl_connection_complete) {
              foundPendingCandidate = TRUE;
              DEBUGF(infof(data,
                           "Connection #%ld has not started SSL connect, "
                           "can't reuse\n",
                           check->connection_id));
              continue;
            }
          }
          match = TRUE;
        }
      }
      else {


        match = TRUE;
      }

      if(match) {
        if(canmultiplex) {



          if(!multiplexed) {

            chosen = check;
            break;
          }
          chosen = check;
          infof(data, "Multiplexed connection found!\n");
          break;
        }
        else {

          chosen = check;
          break;
        }
      }
    }
  }

  if(chosen) {

    chosen->data = data;
    Curl_conncache_unlock(data);
    *usethis = chosen;
    return TRUE;
  }
  Curl_conncache_unlock(data);

  if(foundPendingCandidate && data->set.pipewait) {
    infof(data,
          "Found pending candidate for reuse and CURLOPT_PIPEWAIT is set\n");
    *waitpipe = TRUE;
  }

  return FALSE;
}
