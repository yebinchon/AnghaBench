#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* version; } ;
typedef  TYPE_1__ curl_version_info_data ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLVERSION_NOW ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 char* VERSION_STR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,scalar_t__) ; 
 char* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,scalar_t__,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char const* stdout ; 
 scalar_t__ FUNC19 (char const*) ; 
 char* FUNC20 (char* const,char) ; 

int FUNC21(int argc, char * const argv[])
{
#if 1
  const char *transport = "RTP/AVP;unicast;client_port=1234-1235";  /* UDP */
#else
  /* TCP */
  const char *transport = "RTP/AVP/TCP;unicast;client_port=1234-1235";
#endif
  const char *range = "0.000-";
  int rc = EXIT_SUCCESS;
  char *base_name = NULL;

  FUNC12("\nRTSP request %s\n", VERSION_STR);
  FUNC12("    Project web site: "
    "https://github.com/BackupGGCode/rtsprequest\n");
  FUNC12("    Requires curl V7.20 or greater\n\n");

  /* check command line */
  if((argc != 2) && (argc != 3)) {
    base_name = FUNC20(argv[0], '/');
    if(base_name == NULL) {
      base_name = FUNC20(argv[0], '\\');
    }
    if(base_name == NULL) {
      base_name = argv[0];
    }
    else {
      base_name++;
    }
    FUNC12("Usage:   %s url [transport]\n", base_name);
    FUNC12("         url of video server\n");
    FUNC12("         transport (optional) specifier for media stream"
           " protocol\n");
    FUNC12("         default transport: %s\n", transport);
    FUNC12("Example: %s rtsp://192.168.0.2/media/video1\n\n", base_name);
    rc = EXIT_FAILURE;
  }
  else {
    const char *url = argv[1];
    char *uri = FUNC10(FUNC19(url) + 32);
    char *sdp_filename = FUNC10(FUNC19(url) + 32);
    char *control = FUNC10(FUNC19(url) + 32);
    CURLcode res;
    FUNC9(url, sdp_filename, FUNC19(url) + 32);
    if(argc == 3) {
      transport = argv[2];
    }

    /* initialize curl */
    res = FUNC4(CURL_GLOBAL_ALL);
    if(res == CURLE_OK) {
      curl_version_info_data *data = FUNC5(CURLVERSION_NOW);
      CURL *curl;
      FUNC6(stderr, "    curl V%s loaded\n", data->version);

      /* initialize this curl session */
      curl = FUNC2();
      if(curl != NULL) {
        FUNC11(curl, CURLOPT_VERBOSE, 0L);
        FUNC11(curl, CURLOPT_NOPROGRESS, 1L);
        FUNC11(curl, CURLOPT_HEADERDATA, stdout);
        FUNC11(curl, CURLOPT_URL, url);

        /* request server options */
        FUNC18(uri, FUNC19(url) + 32, "%s", url);
        FUNC14(curl, uri);

        /* request session description and write response to sdp file */
        FUNC13(curl, uri, sdp_filename);

        /* get media control attribute from sdp file */
        FUNC8(sdp_filename, control);

        /* setup media stream */
        FUNC18(uri, FUNC19(url) + 32, "%s/%s", url, control);
        FUNC16(curl, uri, transport);

        /* start playing media stream */
        FUNC18(uri, FUNC19(url) + 32, "%s/", url);
        FUNC15(curl, uri, range);
        FUNC12("Playing video, press any key to stop ...");
        FUNC0();
        FUNC12("\n");

        /* teardown session */
        FUNC17(curl, uri);

        /* cleanup */
        FUNC1(curl);
        curl = NULL;
      }
      else {
        FUNC6(stderr, "curl_easy_init() failed\n");
      }
      FUNC3();
    }
    else {
      FUNC6(stderr, "curl_global_init(%s) failed: %ld\n",
              "CURL_GLOBAL_ALL", res);
    }
    FUNC7(control);
    FUNC7(sdp_filename);
    FUNC7(uri);
  }

  return rc;
}