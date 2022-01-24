#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
struct TYPE_10__ {scalar_t__ lastchat_time; size_t client; int /*<<< orphan*/  chatto; int /*<<< orphan*/  character; } ;
typedef  TYPE_2__ bot_state_t ;
struct TYPE_13__ {int /*<<< orphan*/  integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {TYPE_1__* client; } ;
struct TYPE_9__ {int lasthurt_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  CHARACTERISTIC_CHAT_HITTALKING ; 
 int /*<<< orphan*/  CHAT_ALL ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ GT_TOURNAMENT ; 
 int MAX_CLIENTS ; 
 scalar_t__ TIME_BETWEENCHATTING ; 
 scalar_t__ FUNC6 () ; 
 TYPE_5__ bot_fastchat ; 
 TYPE_4__ bot_nochat ; 
 TYPE_3__* g_entities ; 
 scalar_t__ gametype ; 
 int qfalse ; 
 int qtrue ; 
 float FUNC7 () ; 
 float FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC9(bot_state_t *bs) {
	char name[32], *weap;
	int lasthurt_client;
	float rnd;

	if (bot_nochat.integer) return qfalse;
	if (bs->lastchat_time > FUNC5() - TIME_BETWEENCHATTING) return qfalse;
	if (FUNC1() <= 1) return qfalse;
	lasthurt_client = g_entities[bs->client].client->lasthurt_client;
	if (!lasthurt_client) return qfalse;
	if (lasthurt_client == bs->client) return qfalse;
	//
	if (lasthurt_client < 0 || lasthurt_client >= MAX_CLIENTS) return qfalse;
	//
	rnd = FUNC8(bs->character, CHARACTERISTIC_CHAT_HITTALKING, 0, 1);
	//don't chat in teamplay
	if (FUNC6()) return qfalse;
	// don't chat in tournament mode
	if (gametype == GT_TOURNAMENT) return qfalse;
	//if fast chat is off
	if (!bot_fastchat.integer) {
		if (FUNC7() > rnd * 0.5) return qfalse;
	}
	if (!FUNC2(bs)) return qfalse;
	//
	FUNC4(g_entities[bs->client].client->lasthurt_client, name, sizeof(name));
	weap = FUNC3(g_entities[bs->client].client->lasthurt_client);
	//
	FUNC0(bs, "hit_talking", name, weap, NULL);
	bs->lastchat_time = FUNC5();
	bs->chatto = CHAT_ALL;
	return qtrue;
}