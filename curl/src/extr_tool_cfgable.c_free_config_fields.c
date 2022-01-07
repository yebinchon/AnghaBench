
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct getout {struct getout* infile; struct getout* outfile; struct getout* url; struct getout* next; } ;
struct OperationConfig {struct getout* ftp_alternative_to_user; struct getout* ftp_account; struct getout* service_name; struct getout* proxy_service_name; struct getout* preproxy; int connect_to; int resolve; int telnet_options; int * mimecurrent; int * mimeroot; int * mimepost; int proxyheaders; int headers; int prequote; int postquote; int quote; struct getout* proto_default; struct getout* writeout; struct getout* unix_socket_path; struct getout* sasl_authzid; struct getout* oauth_bearer; struct getout* krblevel; struct getout* customrequest; struct getout* request_target; struct getout* engine; struct getout* hostpubmd5; struct getout* pubkey; struct getout* proxy_key_passwd; struct getout* key_passwd; struct getout* proxy_key_type; struct getout* key_type; struct getout* proxy_key; struct getout* key; struct getout* proxy_crlfile; struct getout* proxy_pinnedpubkey; struct getout* pinnedpubkey; struct getout* crlfile; struct getout* proxy_capath; struct getout* capath; struct getout* proxy_cacert; struct getout* cacert; struct getout* proxy_cert_type; struct getout* cert_type; struct getout* proxy_cert; struct getout* cert; struct getout* proxy_cipher_list; struct getout* cipher_list; struct getout* doh_url; int * url_out; int * url_get; int * url_last; struct getout* url_list; struct getout* netrc_file; struct getout* mail_auth; int mail_rcpt; struct getout* mail_from; struct getout* noproxy; struct getout* dns_servers; struct getout* dns_interface; struct getout* dns_ipv4_addr; struct getout* dns_ipv6_addr; struct getout* proxy; struct getout* proxyuserpwd; struct getout* proxy_tls_authtype; struct getout* proxy_tls_password; struct getout* proxy_tls_username; struct getout* tls_authtype; struct getout* tls_password; struct getout* tls_username; struct getout* userpwd; struct getout* range; struct getout* iface; struct getout* ftpport; struct getout* headerfile; struct getout* referer; struct getout* postfields; struct getout* cookiefile; struct getout* cookiejar; struct getout* cookie; struct getout* altsvc; struct getout* useragent; struct getout* egd_file; struct getout* random_file; } ;


 int Curl_safefree (struct getout*) ;
 int curl_mime_free (int *) ;
 int curl_slist_free_all (int ) ;
 int tool_mime_free (int *) ;

__attribute__((used)) static void free_config_fields(struct OperationConfig *config)
{
  struct getout *urlnode;

  Curl_safefree(config->random_file);
  Curl_safefree(config->egd_file);
  Curl_safefree(config->useragent);
  Curl_safefree(config->altsvc);
  Curl_safefree(config->cookie);
  Curl_safefree(config->cookiejar);
  Curl_safefree(config->cookiefile);

  Curl_safefree(config->postfields);
  Curl_safefree(config->referer);

  Curl_safefree(config->headerfile);
  Curl_safefree(config->ftpport);
  Curl_safefree(config->iface);

  Curl_safefree(config->range);

  Curl_safefree(config->userpwd);
  Curl_safefree(config->tls_username);
  Curl_safefree(config->tls_password);
  Curl_safefree(config->tls_authtype);
  Curl_safefree(config->proxy_tls_username);
  Curl_safefree(config->proxy_tls_password);
  Curl_safefree(config->proxy_tls_authtype);
  Curl_safefree(config->proxyuserpwd);
  Curl_safefree(config->proxy);

  Curl_safefree(config->dns_ipv6_addr);
  Curl_safefree(config->dns_ipv4_addr);
  Curl_safefree(config->dns_interface);
  Curl_safefree(config->dns_servers);

  Curl_safefree(config->noproxy);

  Curl_safefree(config->mail_from);
  curl_slist_free_all(config->mail_rcpt);
  Curl_safefree(config->mail_auth);

  Curl_safefree(config->netrc_file);

  urlnode = config->url_list;
  while(urlnode) {
    struct getout *next = urlnode->next;
    Curl_safefree(urlnode->url);
    Curl_safefree(urlnode->outfile);
    Curl_safefree(urlnode->infile);
    Curl_safefree(urlnode);
    urlnode = next;
  }
  config->url_list = ((void*)0);
  config->url_last = ((void*)0);
  config->url_get = ((void*)0);
  config->url_out = ((void*)0);

  Curl_safefree(config->doh_url);
  Curl_safefree(config->cipher_list);
  Curl_safefree(config->proxy_cipher_list);
  Curl_safefree(config->cert);
  Curl_safefree(config->proxy_cert);
  Curl_safefree(config->cert_type);
  Curl_safefree(config->proxy_cert_type);
  Curl_safefree(config->cacert);
  Curl_safefree(config->proxy_cacert);
  Curl_safefree(config->capath);
  Curl_safefree(config->proxy_capath);
  Curl_safefree(config->crlfile);
  Curl_safefree(config->pinnedpubkey);
  Curl_safefree(config->proxy_pinnedpubkey);
  Curl_safefree(config->proxy_crlfile);
  Curl_safefree(config->key);
  Curl_safefree(config->proxy_key);
  Curl_safefree(config->key_type);
  Curl_safefree(config->proxy_key_type);
  Curl_safefree(config->key_passwd);
  Curl_safefree(config->proxy_key_passwd);
  Curl_safefree(config->pubkey);
  Curl_safefree(config->hostpubmd5);
  Curl_safefree(config->engine);
  Curl_safefree(config->request_target);
  Curl_safefree(config->customrequest);
  Curl_safefree(config->krblevel);

  Curl_safefree(config->oauth_bearer);
  Curl_safefree(config->sasl_authzid);

  Curl_safefree(config->unix_socket_path);
  Curl_safefree(config->writeout);
  Curl_safefree(config->proto_default);

  curl_slist_free_all(config->quote);
  curl_slist_free_all(config->postquote);
  curl_slist_free_all(config->prequote);

  curl_slist_free_all(config->headers);
  curl_slist_free_all(config->proxyheaders);

  curl_mime_free(config->mimepost);
  config->mimepost = ((void*)0);
  tool_mime_free(config->mimeroot);
  config->mimeroot = ((void*)0);
  config->mimecurrent = ((void*)0);

  curl_slist_free_all(config->telnet_options);
  curl_slist_free_all(config->resolve);
  curl_slist_free_all(config->connect_to);

  Curl_safefree(config->preproxy);
  Curl_safefree(config->proxy_service_name);
  Curl_safefree(config->service_name);

  Curl_safefree(config->ftp_account);
  Curl_safefree(config->ftp_alternative_to_user);
}
