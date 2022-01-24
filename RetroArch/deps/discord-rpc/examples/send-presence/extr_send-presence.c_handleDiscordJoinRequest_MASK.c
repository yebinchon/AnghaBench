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
typedef  int /*<<< orphan*/  yn ;
struct TYPE_3__ {char* username; char* discriminator; char* userId; } ;
typedef  TYPE_1__ DiscordUser ;

/* Variables and functions */
 int DISCORD_REPLY_NO ; 
 int DISCORD_REPLY_YES ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(const DiscordUser* request)
{
    int response = -1;
    char yn[4];
    FUNC1("\nDiscord: join request from %s#%s - %s\n",
           request->username,
           request->discriminator,
           request->userId);
    do {
        FUNC1("Accept? (y/n)");
        if (!FUNC2(yn, sizeof(yn))) {
            break;
        }

        if (!yn[0]) {
            continue;
        }

        if (yn[0] == 'y') {
            response = DISCORD_REPLY_YES;
            break;
        }

        if (yn[0] == 'n') {
            response = DISCORD_REPLY_NO;
            break;
        }
    } while (1);
    if (response != -1) {
        FUNC0(request->userId, response);
    }
}