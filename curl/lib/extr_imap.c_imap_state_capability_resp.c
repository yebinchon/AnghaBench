
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int authmechs; } ;
struct imap_conn {void* tls_supported; TYPE_3__ sasl; void* ir_supported; void* login_disabled; } ;
struct TYPE_6__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_4__* ssl; TYPE_1__ proto; struct Curl_easy* data; } ;
struct TYPE_10__ {scalar_t__ use_ssl; } ;
struct TYPE_7__ {char* buffer; } ;
struct Curl_easy {TYPE_5__ set; TYPE_2__ state; } ;
typedef int imapstate ;
struct TYPE_9__ {int use; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_USE_SSL_FAILED ;
 scalar_t__ CURLUSESSL_TRY ;
 unsigned int Curl_sasl_decode_mech (char const*,size_t,size_t*) ;
 size_t FIRSTSOCKET ;
 int IMAP_RESP_OK ;
 void* TRUE ;
 int failf (struct Curl_easy*,char*) ;
 int imap_perform_authentication (struct connectdata*) ;
 int imap_perform_starttls (struct connectdata*) ;
 int memcmp (char const*,char*,int) ;

__attribute__((used)) static CURLcode imap_state_capability_resp(struct connectdata *conn,
                                           int imapcode,
                                           imapstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct imap_conn *imapc = &conn->proto.imapc;
  const char *line = data->state.buffer;

  (void)instate;


  if(imapcode == '*') {
    line += 2;


    for(;;) {
      size_t wordlen;
      while(*line &&
            (*line == ' ' || *line == '\t' ||
              *line == '\r' || *line == '\n')) {

        line++;
      }

      if(!*line)
        break;


      for(wordlen = 0; line[wordlen] && line[wordlen] != ' ' &&
            line[wordlen] != '\t' && line[wordlen] != '\r' &&
            line[wordlen] != '\n';)
        wordlen++;


      if(wordlen == 8 && !memcmp(line, "STARTTLS", 8))
        imapc->tls_supported = TRUE;


      else if(wordlen == 13 && !memcmp(line, "LOGINDISABLED", 13))
        imapc->login_disabled = TRUE;


      else if(wordlen == 7 && !memcmp(line, "SASL-IR", 7))
        imapc->ir_supported = TRUE;


      else if(wordlen > 5 && !memcmp(line, "AUTH=", 5)) {
        size_t llen;
        unsigned int mechbit;

        line += 5;
        wordlen -= 5;


        mechbit = Curl_sasl_decode_mech(line, wordlen, &llen);
        if(mechbit && llen == wordlen)
          imapc->sasl.authmechs |= mechbit;
      }

      line += wordlen;
    }
  }
  else if(imapcode == IMAP_RESP_OK) {
    if(data->set.use_ssl && !conn->ssl[FIRSTSOCKET].use) {

      if(imapc->tls_supported)

        result = imap_perform_starttls(conn);
      else if(data->set.use_ssl == CURLUSESSL_TRY)

        result = imap_perform_authentication(conn);
      else {
        failf(data, "STARTTLS not supported.");
        result = CURLE_USE_SSL_FAILED;
      }
    }
    else
      result = imap_perform_authentication(conn);
  }
  else
    result = imap_perform_authentication(conn);

  return result;
}
