
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int timeval ;
struct TYPE_21__ {char* name; int dispname; } ;
struct TYPE_18__ {char* CAfile; scalar_t__ verifypeer; } ;
struct TYPE_17__ {scalar_t__ user_passwd; } ;
struct connectdata {char* user; char* passwd; scalar_t__ port; TYPE_7__ host; TYPE_4__ ssl_config; TYPE_3__ bits; TYPE_2__* given; struct Curl_easy* data; } ;
struct TYPE_19__ {scalar_t__ cert_type; } ;
struct TYPE_20__ {TYPE_5__ ssl; } ;
struct TYPE_15__ {int url; } ;
struct Curl_easy {TYPE_6__ set; TYPE_1__ change; } ;
typedef scalar_t__ curl_off_t ;
struct TYPE_23__ {char* bv_val; int bv_len; } ;
struct TYPE_22__ {int lud_attrs; int lud_filter; int lud_scope; int lud_dn; } ;
struct TYPE_16__ {int flags; } ;
typedef char TCHAR ;
typedef TYPE_8__ LDAPURLDesc ;
typedef int LDAPMessage ;
typedef int LDAP ;
typedef scalar_t__ CURLcode ;
typedef TYPE_9__ BerValue ;
typedef int BerElement ;


 int CLIENTWRITE_BODY ;
 scalar_t__ CURLE_COULDNT_CONNECT ;
 scalar_t__ CURLE_LDAP_CANNOT_BIND ;
 scalar_t__ CURLE_LDAP_INVALID_URL ;
 scalar_t__ CURLE_LDAP_SEARCH_FAILED ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLE_SSL_CERTPROBLEM ;
 scalar_t__ Curl_base64_encode (struct Curl_easy*,char*,int,char**,size_t*) ;
 scalar_t__ Curl_client_write (struct connectdata*,int ,char*,int) ;
 char* Curl_convert_UTF8_to_tchar (char*) ;
 char* Curl_convert_tchar_to_UTF8 (char*) ;
 int Curl_pgrsSetDownloadCounter (struct Curl_easy*,scalar_t__) ;
 int Curl_setup_transfer (struct Curl_easy*,int,int,int ,int) ;
 int Curl_unicodefree (char*) ;
 int FALSE ;
 int LDAPSSL_CERT_FILETYPE_B64 ;
 int LDAPSSL_CERT_FILETYPE_DER ;
 int LDAPSSL_VERIFY_NONE ;
 int LDAPSSL_VERIFY_SERVER ;
 int LDAP_OPT_NETWORK_TIMEOUT ;
 int* LDAP_OPT_ON ;
 int LDAP_OPT_PROTOCOL_VERSION ;
 int LDAP_OPT_SSL ;
 int LDAP_OPT_X_TLS ;
 int LDAP_OPT_X_TLS_CACERTFILE ;
 int LDAP_OPT_X_TLS_DEMAND ;
 int LDAP_OPT_X_TLS_HARD ;
 int LDAP_OPT_X_TLS_NEVER ;
 int LDAP_OPT_X_TLS_REQUIRE_CERT ;
 int LDAP_SIZELIMIT_EXCEEDED ;
 int LDAP_SUCCESS ;
 int LDAP_TRACE (char*) ;
 int LDAP_VENDOR_NAME ;
 int LDAP_VENDOR_VERSION ;
 int LDAP_VERSION2 ;
 int LDAP_VERSION3 ;
 int PROTOPT_SSL ;
 int TRUE ;
 int _ldap_url_parse (struct connectdata*,TYPE_8__**) ;
 int ber_free (int *,int ) ;
 int connclose (struct connectdata*,char*) ;
 int failf (struct Curl_easy*,char*,...) ;
 int free (char*) ;
 int infof (struct Curl_easy*,char*,...) ;
 char* ldap_err2string (int) ;
 char* ldap_first_attribute (int *,int *,int **) ;
 int * ldap_first_entry (int *,int *) ;
 int ldap_free_urldesc (TYPE_8__*) ;
 char* ldap_get_dn (int *,int *) ;
 TYPE_9__** ldap_get_values_len (int *,int *,char*) ;
 int * ldap_init (char*,int) ;
 int ldap_memfree (char*) ;
 int ldap_msgfree (int *) ;
 char* ldap_next_attribute (int *,int *,int *) ;
 int * ldap_next_entry (int *,int *) ;
 int ldap_search_s (int *,int ,int ,int ,int ,int ,int **) ;
 int ldap_set_option (int *,int ,...) ;
 int ldap_simple_bind_s (int *,char*,char*) ;
 int * ldap_sslinit (char*,int,int) ;
 int ldap_unbind_s (int *) ;
 int ldap_url_parse (int,TYPE_8__**) ;
 int ldap_value_free_len (TYPE_9__**) ;
 int ldap_win_bind (struct connectdata*,int *,char*,char*) ;
 int ldapssl_add_trusted_cert (char*,int) ;
 int ldapssl_client_deinit () ;
 int ldapssl_client_init (int *,int *) ;
 int * ldapssl_init (char*,int,int) ;
 int ldapssl_set_verify_mode (int) ;
 scalar_t__ strcasecompare (scalar_t__,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static CURLcode Curl_ldap(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;
  int rc = 0;
  LDAP *server = ((void*)0);
  LDAPURLDesc *ludp = ((void*)0);
  LDAPMessage *ldapmsg = ((void*)0);
  LDAPMessage *entryIterator;
  int num = 0;
  struct Curl_easy *data = conn->data;
  int ldap_proto = LDAP_VERSION3;
  int ldap_ssl = 0;
  char *val_b64 = ((void*)0);
  size_t val_b64_sz = 0;
  curl_off_t dlsize = 0;






  char *host = ((void*)0);

  char *user = ((void*)0);
  char *passwd = ((void*)0);

  *done = TRUE;
  infof(data, "LDAP local: LDAP Vendor = %s ; LDAP Version = %d\n",
          LDAP_VENDOR_NAME, LDAP_VENDOR_VERSION);
  infof(data, "LDAP local: %s\n", data->change.url);




  rc = _ldap_url_parse(conn, &ludp);

  if(rc != 0) {
    failf(data, "LDAP local: %s", ldap_err2string(rc));
    result = CURLE_LDAP_INVALID_URL;
    goto quit;
  }


  if(conn->given->flags & PROTOPT_SSL)
    ldap_ssl = 1;
  infof(data, "LDAP local: trying to establish %s connection\n",
          ldap_ssl ? "encrypted" : "cleartext");
  host = conn->host.name;


  if(conn->bits.user_passwd) {
    user = conn->user;
    passwd = conn->passwd;
  }




  ldap_set_option(((void*)0), LDAP_OPT_PROTOCOL_VERSION, &ldap_proto);

  if(ldap_ssl) {
  }
  else {
    server = ldap_init(host, (int)conn->port);
    if(server == ((void*)0)) {
      failf(data, "LDAP local: Cannot connect to %s:%ld",
            conn->host.dispname, conn->port);
      result = CURLE_COULDNT_CONNECT;
      goto quit;
    }
  }







  rc = ldap_simple_bind_s(server, user, passwd);

  if(!ldap_ssl && rc != 0) {
    ldap_proto = LDAP_VERSION2;
    ldap_set_option(server, LDAP_OPT_PROTOCOL_VERSION, &ldap_proto);



    rc = ldap_simple_bind_s(server, user, passwd);

  }
  if(rc != 0) {




    failf(data, "LDAP local: bind via ldap_simple_bind_s %s",
          ldap_err2string(rc));

    result = CURLE_LDAP_CANNOT_BIND;
    goto quit;
  }

  rc = ldap_search_s(server, ludp->lud_dn, ludp->lud_scope,
                     ludp->lud_filter, ludp->lud_attrs, 0, &ldapmsg);

  if(rc != 0 && rc != LDAP_SIZELIMIT_EXCEEDED) {
    failf(data, "LDAP remote: %s", ldap_err2string(rc));
    result = CURLE_LDAP_SEARCH_FAILED;
    goto quit;
  }

  for(num = 0, entryIterator = ldap_first_entry(server, ldapmsg);
      entryIterator;
      entryIterator = ldap_next_entry(server, entryIterator), num++) {
    BerElement *ber = ((void*)0);



    char *attribute;

    int i;


    {
      char *name;
      size_t name_len;
      char *dn = name = ldap_get_dn(server, entryIterator);

      name_len = strlen(name);

      result = Curl_client_write(conn, CLIENTWRITE_BODY, (char *)"DN: ", 4);
      if(result) {



        ldap_memfree(dn);

        goto quit;
      }

      result = Curl_client_write(conn, CLIENTWRITE_BODY, (char *) name,
                                 name_len);
      if(result) {



        ldap_memfree(dn);

        goto quit;
      }

      result = Curl_client_write(conn, CLIENTWRITE_BODY, (char *)"\n", 1);
      if(result) {



        ldap_memfree(dn);

        goto quit;
      }

      dlsize += name_len + 5;




      ldap_memfree(dn);
    }


    for(attribute = ldap_first_attribute(server, entryIterator, &ber);
        attribute;
        attribute = ldap_next_attribute(server, entryIterator, ber)) {
      BerValue **vals;
      size_t attr_len;
      char *attr = attribute;

      attr_len = strlen(attr);

      vals = ldap_get_values_len(server, entryIterator, attribute);
      if(vals != ((void*)0)) {
        for(i = 0; (vals[i] != ((void*)0)); i++) {
          result = Curl_client_write(conn, CLIENTWRITE_BODY, (char *)"\t", 1);
          if(result) {
            ldap_value_free_len(vals);



            ldap_memfree(attribute);
            if(ber)
              ber_free(ber, 0);

            goto quit;
          }

          result = Curl_client_write(conn, CLIENTWRITE_BODY,
                                     (char *) attr, attr_len);
          if(result) {
            ldap_value_free_len(vals);



            ldap_memfree(attribute);
            if(ber)
              ber_free(ber, 0);

            goto quit;
          }

          result = Curl_client_write(conn, CLIENTWRITE_BODY, (char *)": ", 2);
          if(result) {
            ldap_value_free_len(vals);



            ldap_memfree(attribute);
            if(ber)
              ber_free(ber, 0);

            goto quit;
          }

          dlsize += attr_len + 3;

          if((attr_len > 7) &&
             (strcmp(";binary", (char *) attr + (attr_len - 7)) == 0)) {

            result = Curl_base64_encode(data,
                                        vals[i]->bv_val,
                                        vals[i]->bv_len,
                                        &val_b64,
                                        &val_b64_sz);
            if(result) {
              ldap_value_free_len(vals);



              ldap_memfree(attribute);
              if(ber)
                ber_free(ber, 0);

              goto quit;
            }

            if(val_b64_sz > 0) {
              result = Curl_client_write(conn, CLIENTWRITE_BODY, val_b64,
                                         val_b64_sz);
              free(val_b64);
              if(result) {
                ldap_value_free_len(vals);



                ldap_memfree(attribute);
                if(ber)
                  ber_free(ber, 0);

                goto quit;
              }

              dlsize += val_b64_sz;
            }
          }
          else {
            result = Curl_client_write(conn, CLIENTWRITE_BODY, vals[i]->bv_val,
                                       vals[i]->bv_len);
            if(result) {
              ldap_value_free_len(vals);



              ldap_memfree(attribute);
              if(ber)
                ber_free(ber, 0);

              goto quit;
            }

            dlsize += vals[i]->bv_len;
          }

          result = Curl_client_write(conn, CLIENTWRITE_BODY, (char *)"\n", 1);
          if(result) {
            ldap_value_free_len(vals);



            ldap_memfree(attribute);
            if(ber)
              ber_free(ber, 0);

            goto quit;
          }

          dlsize++;
        }


        ldap_value_free_len(vals);
      }





      ldap_memfree(attribute);

      result = Curl_client_write(conn, CLIENTWRITE_BODY, (char *)"\n", 1);
      if(result)
        goto quit;
      dlsize++;
      Curl_pgrsSetDownloadCounter(data, dlsize);
    }

    if(ber)
       ber_free(ber, 0);
  }

quit:
  if(ldapmsg) {
    ldap_msgfree(ldapmsg);
    LDAP_TRACE(("Received %d entries\n", num));
  }
  if(rc == LDAP_SIZELIMIT_EXCEEDED)
    infof(data, "There are more than %d entries\n", num);
  if(ludp)
    ldap_free_urldesc(ludp);
  if(server)
    ldap_unbind_s(server);
  Curl_setup_transfer(data, -1, -1, FALSE, -1);
  connclose(conn, "LDAP connection always disable re-use");

  return result;
}
