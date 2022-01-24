#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct getout {struct getout* infile; struct getout* outfile; struct getout* url; struct getout* next; } ;
struct OperationConfig {struct getout* ftp_alternative_to_user; struct getout* ftp_account; struct getout* service_name; struct getout* proxy_service_name; struct getout* preproxy; int /*<<< orphan*/  connect_to; int /*<<< orphan*/  resolve; int /*<<< orphan*/  telnet_options; int /*<<< orphan*/ * mimecurrent; int /*<<< orphan*/ * mimeroot; int /*<<< orphan*/ * mimepost; int /*<<< orphan*/  proxyheaders; int /*<<< orphan*/  headers; int /*<<< orphan*/  prequote; int /*<<< orphan*/  postquote; int /*<<< orphan*/  quote; struct getout* proto_default; struct getout* writeout; struct getout* unix_socket_path; struct getout* sasl_authzid; struct getout* oauth_bearer; struct getout* krblevel; struct getout* customrequest; struct getout* request_target; struct getout* engine; struct getout* hostpubmd5; struct getout* pubkey; struct getout* proxy_key_passwd; struct getout* key_passwd; struct getout* proxy_key_type; struct getout* key_type; struct getout* proxy_key; struct getout* key; struct getout* proxy_crlfile; struct getout* proxy_pinnedpubkey; struct getout* pinnedpubkey; struct getout* crlfile; struct getout* proxy_capath; struct getout* capath; struct getout* proxy_cacert; struct getout* cacert; struct getout* proxy_cert_type; struct getout* cert_type; struct getout* proxy_cert; struct getout* cert; struct getout* proxy_cipher_list; struct getout* cipher_list; struct getout* doh_url; int /*<<< orphan*/ * url_out; int /*<<< orphan*/ * url_get; int /*<<< orphan*/ * url_last; struct getout* url_list; struct getout* netrc_file; struct getout* mail_auth; int /*<<< orphan*/  mail_rcpt; struct getout* mail_from; struct getout* noproxy; struct getout* dns_servers; struct getout* dns_interface; struct getout* dns_ipv4_addr; struct getout* dns_ipv6_addr; struct getout* proxy; struct getout* proxyuserpwd; struct getout* proxy_tls_authtype; struct getout* proxy_tls_password; struct getout* proxy_tls_username; struct getout* tls_authtype; struct getout* tls_password; struct getout* tls_username; struct getout* userpwd; struct getout* range; struct getout* iface; struct getout* ftpport; struct getout* headerfile; struct getout* referer; struct getout* postfields; struct getout* cookiefile; struct getout* cookiejar; struct getout* cookie; struct getout* altsvc; struct getout* useragent; struct getout* egd_file; struct getout* random_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct getout*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct OperationConfig *config)
{
  struct getout *urlnode;

  FUNC0(config->random_file);
  FUNC0(config->egd_file);
  FUNC0(config->useragent);
  FUNC0(config->altsvc);
  FUNC0(config->cookie);
  FUNC0(config->cookiejar);
  FUNC0(config->cookiefile);

  FUNC0(config->postfields);
  FUNC0(config->referer);

  FUNC0(config->headerfile);
  FUNC0(config->ftpport);
  FUNC0(config->iface);

  FUNC0(config->range);

  FUNC0(config->userpwd);
  FUNC0(config->tls_username);
  FUNC0(config->tls_password);
  FUNC0(config->tls_authtype);
  FUNC0(config->proxy_tls_username);
  FUNC0(config->proxy_tls_password);
  FUNC0(config->proxy_tls_authtype);
  FUNC0(config->proxyuserpwd);
  FUNC0(config->proxy);

  FUNC0(config->dns_ipv6_addr);
  FUNC0(config->dns_ipv4_addr);
  FUNC0(config->dns_interface);
  FUNC0(config->dns_servers);

  FUNC0(config->noproxy);

  FUNC0(config->mail_from);
  FUNC2(config->mail_rcpt);
  FUNC0(config->mail_auth);

  FUNC0(config->netrc_file);

  urlnode = config->url_list;
  while(urlnode) {
    struct getout *next = urlnode->next;
    FUNC0(urlnode->url);
    FUNC0(urlnode->outfile);
    FUNC0(urlnode->infile);
    FUNC0(urlnode);
    urlnode = next;
  }
  config->url_list = NULL;
  config->url_last = NULL;
  config->url_get = NULL;
  config->url_out = NULL;

  FUNC0(config->doh_url);
  FUNC0(config->cipher_list);
  FUNC0(config->proxy_cipher_list);
  FUNC0(config->cert);
  FUNC0(config->proxy_cert);
  FUNC0(config->cert_type);
  FUNC0(config->proxy_cert_type);
  FUNC0(config->cacert);
  FUNC0(config->proxy_cacert);
  FUNC0(config->capath);
  FUNC0(config->proxy_capath);
  FUNC0(config->crlfile);
  FUNC0(config->pinnedpubkey);
  FUNC0(config->proxy_pinnedpubkey);
  FUNC0(config->proxy_crlfile);
  FUNC0(config->key);
  FUNC0(config->proxy_key);
  FUNC0(config->key_type);
  FUNC0(config->proxy_key_type);
  FUNC0(config->key_passwd);
  FUNC0(config->proxy_key_passwd);
  FUNC0(config->pubkey);
  FUNC0(config->hostpubmd5);
  FUNC0(config->engine);
  FUNC0(config->request_target);
  FUNC0(config->customrequest);
  FUNC0(config->krblevel);

  FUNC0(config->oauth_bearer);
  FUNC0(config->sasl_authzid);

  FUNC0(config->unix_socket_path);
  FUNC0(config->writeout);
  FUNC0(config->proto_default);

  FUNC2(config->quote);
  FUNC2(config->postquote);
  FUNC2(config->prequote);

  FUNC2(config->headers);
  FUNC2(config->proxyheaders);

  FUNC1(config->mimepost);
  config->mimepost = NULL;
  FUNC3(config->mimeroot);
  config->mimeroot = NULL;
  config->mimecurrent = NULL;

  FUNC2(config->telnet_options);
  FUNC2(config->resolve);
  FUNC2(config->connect_to);

  FUNC0(config->preproxy);
  FUNC0(config->proxy_service_name);
  FUNC0(config->service_name);

  FUNC0(config->ftp_account);
  FUNC0(config->ftp_alternative_to_user);
}