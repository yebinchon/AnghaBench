#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_11__ {int /*<<< orphan*/  conn_control; } ;
typedef  TYPE_2__ FTPContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int const*) ; 

__attribute__((used)) static int FUNC7(URLContext *h)
{
    static const char *command = "ABOR\r\n";
    int err;
    static const int abor_codes[] = {225, 226, 0};
    FTPContext *s = h->priv_data;

    /* According to RCF 959:
       "ABOR command tells the server to abort the previous FTP
       service command and any associated transfer of data."

       There are FTP server implementations that don't response
       to any commands during data transfer in passive mode (including ABOR).

       This implementation closes data connection by force.
    */

    if (FUNC5(s, command, NULL, NULL) < 0) {
        FUNC2(s);
        if ((err = FUNC4(h)) < 0) {
            FUNC0(h, AV_LOG_ERROR, "Reconnect failed.\n");
            return err;
        }
    } else {
        FUNC3(s);
        if (FUNC6(s, NULL, abor_codes) < 225) {
            /* wu-ftpd also closes control connection after data connection closing */
            FUNC1(&s->conn_control);
            if ((err = FUNC4(h)) < 0) {
                FUNC0(h, AV_LOG_ERROR, "Reconnect failed.\n");
                return err;
            }
        }
    }

    return 0;
}