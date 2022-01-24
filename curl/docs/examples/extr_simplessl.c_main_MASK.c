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
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_CAINFO ; 
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_KEYPASSWD ; 
 int /*<<< orphan*/  CURLOPT_SSLCERT ; 
 int /*<<< orphan*/  CURLOPT_SSLCERTTYPE ; 
 int /*<<< orphan*/  CURLOPT_SSLENGINE ; 
 int /*<<< orphan*/  CURLOPT_SSLENGINE_DEFAULT ; 
 int /*<<< orphan*/  CURLOPT_SSLKEY ; 
 int /*<<< orphan*/  CURLOPT_SSLKEYTYPE ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(void)
{
  CURL *curl;
  CURLcode res;
  FILE *headerfile;
  const char *pPassphrase = NULL;

  static const char *pCertFile = "testcert.pem";
  static const char *pCACertFile = "cacert.pem";
  static const char *pHeaderFile = "dumpit";

  const char *pKeyName;
  const char *pKeyType;

  const char *pEngine;

#ifdef USE_ENGINE
  pKeyName  = "rsa_test";
  pKeyType  = "ENG";
  pEngine   = "chil";            /* for nChiper HSM... */
#else
  pKeyName  = "testkey.pem";
  pKeyType  = "PEM";
  pEngine   = NULL;
#endif

  headerfile = FUNC7(pHeaderFile, "wb");

  FUNC6(CURL_GLOBAL_DEFAULT);

  curl = FUNC1();
  if(curl) {
    /* what call to write: */
    FUNC3(curl, CURLOPT_URL, "HTTPS://your.favourite.ssl.site");
    FUNC3(curl, CURLOPT_HEADERDATA, headerfile);

    do { /* dummy loop, just to break out from */
      if(pEngine) {
        /* use crypto engine */
        if(FUNC3(curl, CURLOPT_SSLENGINE, pEngine) != CURLE_OK) {
          /* load the crypto engine */
          FUNC8(stderr, "can't set crypto engine\n");
          break;
        }
        if(FUNC3(curl, CURLOPT_SSLENGINE_DEFAULT, 1L) != CURLE_OK) {
          /* set the crypto engine as default */
          /* only needed for the first time you load
             a engine in a curl object... */
          FUNC8(stderr, "can't set crypto engine as default\n");
          break;
        }
      }
      /* cert is stored PEM coded in file... */
      /* since PEM is default, we needn't set it for PEM */
      FUNC3(curl, CURLOPT_SSLCERTTYPE, "PEM");

      /* set the cert for client authentication */
      FUNC3(curl, CURLOPT_SSLCERT, pCertFile);

      /* sorry, for engine we must set the passphrase
         (if the key has one...) */
      if(pPassphrase)
        FUNC3(curl, CURLOPT_KEYPASSWD, pPassphrase);

      /* if we use a key stored in a crypto engine,
         we must set the key type to "ENG" */
      FUNC3(curl, CURLOPT_SSLKEYTYPE, pKeyType);

      /* set the private key (file or ID in engine) */
      FUNC3(curl, CURLOPT_SSLKEY, pKeyName);

      /* set the file with the certs vaildating the server */
      FUNC3(curl, CURLOPT_CAINFO, pCACertFile);

      /* disconnect if we can't validate server's cert */
      FUNC3(curl, CURLOPT_SSL_VERIFYPEER, 1L);

      /* Perform the request, res will get the return code */
      res = FUNC2(curl);
      /* Check for errors */
      if(res != CURLE_OK)
        FUNC8(stderr, "curl_easy_perform() failed: %s\n",
                FUNC4(res));

      /* we are done... */
    } while(0);
    /* always cleanup */
    FUNC0(curl);
  }

  FUNC5();

  return 0;
}