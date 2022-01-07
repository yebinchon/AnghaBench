
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int memory; } ;
struct ParserStruct {int ok; TYPE_1__ characters; int tags; } ;
typedef scalar_t__ XML_Parser ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int CURL_GLOBAL_DEFAULT ;
 char* XML_ErrorString (int) ;
 int XML_GetErrorCode (scalar_t__) ;
 scalar_t__ XML_Parse (scalar_t__,int *,int ,int) ;
 scalar_t__ XML_ParserCreateNS (int *,char) ;
 int XML_ParserFree (scalar_t__) ;
 int XML_SetCharacterDataHandler (scalar_t__,int ) ;
 int XML_SetElementHandler (scalar_t__,int ,int ) ;
 int XML_SetUserData (scalar_t__,struct ParserStruct*) ;
 int characterDataHandler ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,void*) ;
 char* curl_easy_strerror (scalar_t__) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int endElement ;
 int fprintf (int ,char*,...) ;
 int free (int ) ;
 int memset (struct ParserStruct*,int ,int) ;
 void* parseStreamCallback ;
 int printf (char*,...) ;
 int startElement ;
 int stderr ;

int main(void)
{
  CURL *curl_handle;
  CURLcode res;
  XML_Parser parser;
  struct ParserStruct state;


  memset(&state, 0, sizeof(struct ParserStruct));
  state.ok = 1;


  parser = XML_ParserCreateNS(((void*)0), '\0');
  XML_SetUserData(parser, &state);
  XML_SetElementHandler(parser, startElement, endElement);
  XML_SetCharacterDataHandler(parser, characterDataHandler);


  curl_global_init(CURL_GLOBAL_DEFAULT);
  curl_handle = curl_easy_init();
  curl_easy_setopt(curl_handle, CURLOPT_URL,
                   "https://www.w3schools.com/xml/simple.xml");
  curl_easy_setopt(curl_handle, CURLOPT_WRITEFUNCTION, parseStreamCallback);
  curl_easy_setopt(curl_handle, CURLOPT_WRITEDATA, (void *)parser);

  printf("Depth   Characters   Closing Tag\n");


  res = curl_easy_perform(curl_handle);
  if(res != CURLE_OK) {
    fprintf(stderr, "curl_easy_perform() failed: %s\n",
            curl_easy_strerror(res));
  }
  else if(state.ok) {

    if(XML_Parse(parser, ((void*)0), 0, 1) == 0) {
      int error_code = XML_GetErrorCode(parser);
      fprintf(stderr, "Finalizing parsing failed with error code %d (%s).\n",
              error_code, XML_ErrorString(error_code));
    }
    else {
      printf("                     --------------\n");
      printf("                     %lu tags total\n", state.tags);
    }
  }


  free(state.characters.memory);
  XML_ParserFree(parser);
  curl_easy_cleanup(curl_handle);
  curl_global_cleanup();

  return 0;
}
