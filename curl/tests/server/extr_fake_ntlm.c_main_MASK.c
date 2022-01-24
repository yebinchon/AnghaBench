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
typedef  int /*<<< orphan*/  logfilename ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LOGFILE ; 
 int TRUE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (char**,size_t*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ,long) ; 
 char const* path ; 
 char* FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char* serverlogfile ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (char const*) ; 
 scalar_t__ FUNC17 (char*,char*,int) ; 
 long FUNC18 (char const*,char**,int) ; 
 char* FUNC19 (long) ; 

int FUNC20(int argc, char *argv[])
{
  char buf[1024];
  char logfilename[256];
  FILE *stream;
  char *filename;
  int error;
  char *type1_input = NULL, *type3_input = NULL;
  char *type1_output = NULL, *type3_output = NULL;
  size_t size = 0;
  long testnum;
  const char *env;
  int arg = 1;
  const char *helper_user = "unknown";
  const char *helper_proto = "unknown";
  const char *helper_domain = "unknown";
  bool use_cached_creds = FALSE;
  char *msgbuf;

  buf[0] = '\0';

  while(argc > arg) {
    if(!FUNC14("--use-cached-creds", argv[arg])) {
      use_cached_creds = TRUE;
      arg++;
    }
    else if(!FUNC14("--helper-protocol", argv[arg])) {
      arg++;
      if(argc > arg)
        helper_proto = argv[arg++];
    }
    else if(!FUNC14("--username", argv[arg])) {
      arg++;
      if(argc > arg)
        helper_user = argv[arg++];
    }
    else if(!FUNC14("--domain", argv[arg])) {
      arg++;
      if(argc > arg)
        helper_domain = argv[arg++];
    }
    else {
      FUNC13("Usage: fake_ntlm [option]\n"
           " --use-cached-creds\n"
           " --helper-protocol [protocol]\n"
           " --username [username]\n"
           " --domain [domain]");
      FUNC0(1);
    }
  }

  env = FUNC7("CURL_NTLM_AUTH_TESTNUM");
  if(env) {
    char *endptr;
    long lnum = FUNC18(env, &endptr, 10);
    if((endptr != env + FUNC16(env)) || (lnum < 1L)) {
      FUNC5(stderr, "Test number not valid in CURL_NTLM_AUTH_TESTNUM");
      FUNC0(1);
    }
    testnum = lnum;
  }
  else {
    FUNC5(stderr, "Test number not specified in CURL_NTLM_AUTH_TESTNUM");
    FUNC0(1);
  }

  /* logmsg cannot be used until this file name is set */
  FUNC10(logfilename, sizeof(logfilename), LOGFILE, testnum);
  serverlogfile = logfilename;

  FUNC9("fake_ntlm (user: %s) (proto: %s) (domain: %s) (cached creds: %s)",
         helper_user, helper_proto, helper_domain,
         (use_cached_creds) ? "yes" : "no");

  env = FUNC7("CURL_NTLM_AUTH_SRCDIR");
  if(env) {
    path = env;
  }

  filename = FUNC19(testnum);
  stream = FUNC4(filename, "rb");
  if(!stream) {
    error = errno;
    FUNC9("fopen() failed with error: %d %s", error, FUNC15(error));
    FUNC9("Error opening file: %s", filename);
    FUNC9("Couldn't open test file %ld", testnum);
    FUNC0(1);
  }
  else {
    /* get the ntlm_auth input/output */
    error = FUNC8(&type1_input, &size, "ntlm_auth_type1", "input", stream);
    FUNC1(stream);
    if(error || size == 0) {
      FUNC9("getpart() type 1 input failed with error: %d", error);
      FUNC0(1);
    }
  }

  stream = FUNC4(filename, "rb");
  if(!stream) {
    error = errno;
    FUNC9("fopen() failed with error: %d %s", error, FUNC15(error));
    FUNC9("Error opening file: %s", filename);
    FUNC9("Couldn't open test file %ld", testnum);
    FUNC0(1);
  }
  else {
    size = 0;
    error = FUNC8(&type3_input, &size, "ntlm_auth_type3", "input", stream);
    FUNC1(stream);
    if(error || size == 0) {
      FUNC9("getpart() type 3 input failed with error: %d", error);
      FUNC0(1);
    }
  }

  while(FUNC3(buf, sizeof(buf), stdin)) {
    if(FUNC14(buf, type1_input) == 0) {
      stream = FUNC4(filename, "rb");
      if(!stream) {
        error = errno;
        FUNC9("fopen() failed with error: %d %s", error, FUNC15(error));
        FUNC9("Error opening file: %s", filename);
        FUNC9("Couldn't open test file %ld", testnum);
        FUNC0(1);
      }
      else {
        size = 0;
        error = FUNC8(&type1_output, &size, "ntlm_auth_type1", "output",
                        stream);
        FUNC1(stream);
        if(error || size == 0) {
          FUNC9("getpart() type 1 output failed with error: %d", error);
          FUNC0(1);
        }
      }
      FUNC12("%s", type1_output);
      FUNC2(stdout);
    }
    else if(FUNC17(buf, type3_input, FUNC16(type3_input)) == 0) {
      stream = FUNC4(filename, "rb");
      if(!stream) {
        error = errno;
        FUNC9("fopen() failed with error: %d %s", error, FUNC15(error));
        FUNC9("Error opening file: %s", filename);
        FUNC9("Couldn't open test file %ld", testnum);
        FUNC0(1);
      }
      else {
        size = 0;
        error = FUNC8(&type3_output, &size, "ntlm_auth_type3", "output",
                        stream);
        FUNC1(stream);
        if(error || size == 0) {
          FUNC9("getpart() type 3 output failed with error: %d", error);
          FUNC0(1);
        }
      }
      FUNC12("%s", type3_output);
      FUNC2(stdout);
    }
    else {
      FUNC12("Unknown request\n");
      msgbuf = FUNC11(buf, 0);
      if(msgbuf) {
        FUNC9("invalid input: '%s'\n", msgbuf);
        FUNC6(msgbuf);
      }
      else
        FUNC9("OOM formatting invalid input: '%s'\n", buf);
      FUNC0(1);
    }
  }
  FUNC9("Exit");
  return 1;
}