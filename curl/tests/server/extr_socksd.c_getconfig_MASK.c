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
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {void* connectrep; void* responsemethod; void* password; void* user; void* port; void* addr; void* nmethods_max; void* nmethods_min; void* version; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_READTEXT ; 
 void* FUNC0 (char*) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  configfile ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (char*) ; 
 int FUNC7 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (void*,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
  FILE *fp = FUNC3(configfile, FOPEN_READTEXT);
  FUNC5();
  if(fp) {
    char buffer[512];
    FUNC4("parse config file");
    while(FUNC2(buffer, sizeof(buffer), fp)) {
      char key[32];
      char value[32];
      if(2 == FUNC7(buffer, "%31s %31s", key, value)) {
        if(!FUNC8(key, "version")) {
          config.version = FUNC0(value);
          FUNC4("version [%d] set", config.version);
        }
        else if(!FUNC8(key, "nmethods_min")) {
          config.nmethods_min = FUNC0(value);
          FUNC4("nmethods_min [%d] set", config.nmethods_min);
        }
        else if(!FUNC8(key, "nmethods_max")) {
          config.nmethods_max = FUNC0(value);
          FUNC4("nmethods_max [%d] set", config.nmethods_max);
        }
        else if(!FUNC8(key, "backend")) {
          FUNC9(config.addr, value);
          FUNC4("backend [%s] set", config.addr);
        }
        else if(!FUNC8(key, "backendport")) {
          config.port = FUNC6(value);
          FUNC4("backendport [%d] set", config.port);
        }
        else if(!FUNC8(key, "user")) {
          FUNC9(config.user, value);
          FUNC4("user [%s] set", config.user);
        }
        else if(!FUNC8(key, "password")) {
          FUNC9(config.password, value);
          FUNC4("password [%s] set", config.password);
        }
        /* Methods:
           o  X'00' NO AUTHENTICATION REQUIRED
           o  X'01' GSSAPI
           o  X'02' USERNAME/PASSWORD
        */
        else if(!FUNC8(key, "method")) {
          config.responsemethod = FUNC0(value);
          FUNC4("method [%d] set", config.responsemethod);
        }
        else if(!FUNC8(key, "response")) {
          config.connectrep = FUNC0(value);
          FUNC4("response [%d] set", config.connectrep);
        }
      }
    }
    FUNC1(fp);
  }
}