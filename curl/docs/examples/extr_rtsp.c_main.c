
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* version; } ;
typedef TYPE_1__ curl_version_info_data ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_HEADERDATA ;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLVERSION_NOW ;
 int CURL_GLOBAL_ALL ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 char* VERSION_STR ;
 int _getch () ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 TYPE_1__* curl_version_info (int ) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int get_media_control_attribute (char*,char*) ;
 int get_sdp_filename (char const*,char*,scalar_t__) ;
 char* malloc (scalar_t__) ;
 int my_curl_easy_setopt (int *,int ,...) ;
 int printf (char*,...) ;
 int rtsp_describe (int *,char*,char*) ;
 int rtsp_options (int *,char*) ;
 int rtsp_play (int *,char*,char const*) ;
 int rtsp_setup (int *,char*,char const*) ;
 int rtsp_teardown (int *,char*) ;
 int snprintf (char*,scalar_t__,char*,char const*,...) ;
 int stderr ;
 char const* stdout ;
 scalar_t__ strlen (char const*) ;
 char* strrchr (char* const,char) ;

int main(int argc, char * const argv[])
{

  const char *transport = "RTP/AVP;unicast;client_port=1234-1235";




  const char *range = "0.000-";
  int rc = EXIT_SUCCESS;
  char *base_name = ((void*)0);

  printf("\nRTSP request %s\n", VERSION_STR);
  printf("    Project web site: "
    "https://github.com/BackupGGCode/rtsprequest\n");
  printf("    Requires curl V7.20 or greater\n\n");


  if((argc != 2) && (argc != 3)) {
    base_name = strrchr(argv[0], '/');
    if(base_name == ((void*)0)) {
      base_name = strrchr(argv[0], '\\');
    }
    if(base_name == ((void*)0)) {
      base_name = argv[0];
    }
    else {
      base_name++;
    }
    printf("Usage:   %s url [transport]\n", base_name);
    printf("         url of video server\n");
    printf("         transport (optional) specifier for media stream"
           " protocol\n");
    printf("         default transport: %s\n", transport);
    printf("Example: %s rtsp://192.168.0.2/media/video1\n\n", base_name);
    rc = EXIT_FAILURE;
  }
  else {
    const char *url = argv[1];
    char *uri = malloc(strlen(url) + 32);
    char *sdp_filename = malloc(strlen(url) + 32);
    char *control = malloc(strlen(url) + 32);
    CURLcode res;
    get_sdp_filename(url, sdp_filename, strlen(url) + 32);
    if(argc == 3) {
      transport = argv[2];
    }


    res = curl_global_init(CURL_GLOBAL_ALL);
    if(res == CURLE_OK) {
      curl_version_info_data *data = curl_version_info(CURLVERSION_NOW);
      CURL *curl;
      fprintf(stderr, "    curl V%s loaded\n", data->version);


      curl = curl_easy_init();
      if(curl != ((void*)0)) {
        my_curl_easy_setopt(curl, CURLOPT_VERBOSE, 0L);
        my_curl_easy_setopt(curl, CURLOPT_NOPROGRESS, 1L);
        my_curl_easy_setopt(curl, CURLOPT_HEADERDATA, stdout);
        my_curl_easy_setopt(curl, CURLOPT_URL, url);


        snprintf(uri, strlen(url) + 32, "%s", url);
        rtsp_options(curl, uri);


        rtsp_describe(curl, uri, sdp_filename);


        get_media_control_attribute(sdp_filename, control);


        snprintf(uri, strlen(url) + 32, "%s/%s", url, control);
        rtsp_setup(curl, uri, transport);


        snprintf(uri, strlen(url) + 32, "%s/", url);
        rtsp_play(curl, uri, range);
        printf("Playing video, press any key to stop ...");
        _getch();
        printf("\n");


        rtsp_teardown(curl, uri);


        curl_easy_cleanup(curl);
        curl = ((void*)0);
      }
      else {
        fprintf(stderr, "curl_easy_init() failed\n");
      }
      curl_global_cleanup();
    }
    else {
      fprintf(stderr, "curl_global_init(%s) failed: %d\n",
              "CURL_GLOBAL_ALL", res);
    }
    free(control);
    free(sdp_filename);
    free(uri);
  }

  return rc;
}
