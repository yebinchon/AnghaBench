#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  memory; } ;
struct ParserStruct {int ok; TYPE_1__ characters; int /*<<< orphan*/  tags; } ;
typedef  scalar_t__ XML_Parser ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  CURL_GLOBAL_DEFAULT ; 
 char* FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct ParserStruct*) ; 
 int /*<<< orphan*/  characterDataHandler ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 char* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  endElement ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ParserStruct*,int /*<<< orphan*/ ,int) ; 
 void* parseStreamCallback ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  startElement ; 
 int /*<<< orphan*/  stderr ; 

int FUNC19(void)
{
  CURL *curl_handle;
  CURLcode res;
  XML_Parser parser;
  struct ParserStruct state;

  /* Initialize the state structure for parsing. */
  FUNC17(&state, 0, sizeof(struct ParserStruct));
  state.ok = 1;

  /* Initialize a namespace-aware parser. */
  parser = FUNC3(NULL, '\0');
  FUNC7(parser, &state);
  FUNC6(parser, startElement, endElement);
  FUNC5(parser, characterDataHandler);

  /* Initialize a libcurl handle. */
  FUNC14(CURL_GLOBAL_DEFAULT);
  curl_handle = FUNC9();
  FUNC11(curl_handle, CURLOPT_URL,
                   "https://www.w3schools.com/xml/simple.xml");
  FUNC11(curl_handle, CURLOPT_WRITEFUNCTION, parseStreamCallback);
  FUNC11(curl_handle, CURLOPT_WRITEDATA, (void *)parser);

  FUNC18("Depth   Characters   Closing Tag\n");

  /* Perform the request and any follow-up parsing. */
  res = FUNC10(curl_handle);
  if(res != CURLE_OK) {
    FUNC15(stderr, "curl_easy_perform() failed: %s\n",
            FUNC12(res));
  }
  else if(state.ok) {
    /* Expat requires one final call to finalize parsing. */
    if(FUNC2(parser, NULL, 0, 1) == 0) {
      int error_code = FUNC1(parser);
      FUNC15(stderr, "Finalizing parsing failed with error code %d (%s).\n",
              error_code, FUNC0(error_code));
    }
    else {
      FUNC18("                     --------------\n");
      FUNC18("                     %lu tags total\n", state.tags);
    }
  }

  /* Clean up. */
  FUNC16(state.characters.memory);
  FUNC4(parser);
  FUNC8(curl_handle);
  FUNC13();

  return 0;
}