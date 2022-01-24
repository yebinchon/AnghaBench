#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int authmechs; } ;
struct imap_conn {void* tls_supported; TYPE_3__ sasl; void* ir_supported; void* login_disabled; } ;
struct TYPE_6__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_4__* ssl; TYPE_1__ proto; struct Curl_easy* data; } ;
struct TYPE_10__ {scalar_t__ use_ssl; } ;
struct TYPE_7__ {char* buffer; } ;
struct Curl_easy {TYPE_5__ set; TYPE_2__ state; } ;
typedef  int /*<<< orphan*/  imapstate ;
struct TYPE_9__ {int /*<<< orphan*/  use; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_USE_SSL_FAILED ; 
 scalar_t__ CURLUSESSL_TRY ; 
 unsigned int FUNC0 (char const*,size_t,size_t*) ; 
 size_t FIRSTSOCKET ; 
 int IMAP_RESP_OK ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static CURLcode FUNC5(struct connectdata *conn,
                                           int imapcode,
                                           imapstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct imap_conn *imapc = &conn->proto.imapc;
  const char *line = data->state.buffer;

  (void)instate; /* no use for this yet */

  /* Do we have a untagged response? */
  if(imapcode == '*') {
    line += 2;

    /* Loop through the data line */
    for(;;) {
      size_t wordlen;
      while(*line &&
            (*line == ' ' || *line == '\t' ||
              *line == '\r' || *line == '\n')) {

        line++;
      }

      if(!*line)
        break;

      /* Extract the word */
      for(wordlen = 0; line[wordlen] && line[wordlen] != ' ' &&
            line[wordlen] != '\t' && line[wordlen] != '\r' &&
            line[wordlen] != '\n';)
        wordlen++;

      /* Does the server support the STARTTLS capability? */
      if(wordlen == 8 && !FUNC4(line, "STARTTLS", 8))
        imapc->tls_supported = TRUE;

      /* Has the server explicitly disabled clear text authentication? */
      else if(wordlen == 13 && !FUNC4(line, "LOGINDISABLED", 13))
        imapc->login_disabled = TRUE;

      /* Does the server support the SASL-IR capability? */
      else if(wordlen == 7 && !FUNC4(line, "SASL-IR", 7))
        imapc->ir_supported = TRUE;

      /* Do we have a SASL based authentication mechanism? */
      else if(wordlen > 5 && !FUNC4(line, "AUTH=", 5)) {
        size_t llen;
        unsigned int mechbit;

        line += 5;
        wordlen -= 5;

        /* Test the word for a matching authentication mechanism */
        mechbit = FUNC0(line, wordlen, &llen);
        if(mechbit && llen == wordlen)
          imapc->sasl.authmechs |= mechbit;
      }

      line += wordlen;
    }
  }
  else if(imapcode == IMAP_RESP_OK) {
    if(data->set.use_ssl && !conn->ssl[FIRSTSOCKET].use) {
      /* We don't have a SSL/TLS connection yet, but SSL is requested */
      if(imapc->tls_supported)
        /* Switch to TLS connection now */
        result = FUNC3(conn);
      else if(data->set.use_ssl == CURLUSESSL_TRY)
        /* Fallback and carry on with authentication */
        result = FUNC2(conn);
      else {
        FUNC1(data, "STARTTLS not supported.");
        result = CURLE_USE_SSL_FAILED;
      }
    }
    else
      result = FUNC2(conn);
  }
  else
    result = FUNC2(conn);

  return result;
}