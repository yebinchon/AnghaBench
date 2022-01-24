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
struct TYPE_2__ {int mode_changed; char* server_addr; int server_port; int create_radius; int render_radius; int delete_radius; int /*<<< orphan*/  block1; int /*<<< orphan*/  block0; int /*<<< orphan*/  db_path; void* mode; } ;

/* Variables and functions */
 char* DB_PATH ; 
 int DEFAULT_PORT ; 
 int MAX_ADDR_LENGTH ; 
 int MAX_PATH_LENGTH ; 
 void* MODE_OFFLINE ; 
 void* MODE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 TYPE_1__* g ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int FUNC13 (char const*,char*,...) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void FUNC17(const char *buffer, int forward) {
    char username[128] = {0};
    char token[128] = {0};
    char server_addr[MAX_ADDR_LENGTH];
    int server_port = DEFAULT_PORT;
    char filename[MAX_PATH_LENGTH];
    int radius, count, xc, yc, zc;
    if (FUNC13(buffer, "/identity %128s %128s", username, token) == 2) {
        FUNC8(username, token);
        FUNC0("Successfully imported identity token!");
        FUNC9();
    }
    else if (FUNC14(buffer, "/logout") == 0) {
        FUNC7();
        FUNC9();
    }
    else if (FUNC13(buffer, "/login %128s", username) == 1) {
        if (FUNC6(username)) {
            FUNC9();
        }
        else {
            FUNC0("Unknown username.");
        }
    }
    else if (FUNC13(buffer,
        "/online %128s %d", server_addr, &server_port) >= 1)
    {
        g->mode_changed = 1;
        g->mode = MODE_ONLINE;
        FUNC15(g->server_addr, server_addr, MAX_ADDR_LENGTH);
        g->server_port = server_port;
        FUNC11(g->db_path, MAX_PATH_LENGTH,
            "cache.%s.%d.db", g->server_addr, g->server_port);
    }
    else if (FUNC13(buffer, "/offline %128s", filename) == 1) {
        g->mode_changed = 1;
        g->mode = MODE_OFFLINE;
        FUNC11(g->db_path, MAX_PATH_LENGTH, "%s.db", filename);
    }
    else if (FUNC14(buffer, "/offline") == 0) {
        g->mode_changed = 1;
        g->mode = MODE_OFFLINE;
        FUNC11(g->db_path, MAX_PATH_LENGTH, "%s", DB_PATH);
    }
    else if (FUNC13(buffer, "/view %d", &radius) == 1) {
        if (radius >= 1 && radius <= 24) {
            g->create_radius = radius;
            g->render_radius = radius;
            g->delete_radius = radius + 4;
        }
        else {
            FUNC0("Viewing distance must be between 1 and 24.");
        }
    }
    else if (FUNC14(buffer, "/copy") == 0) {
        FUNC3();
    }
    else if (FUNC14(buffer, "/paste") == 0) {
        FUNC10();
    }
    else if (FUNC14(buffer, "/tree") == 0) {
        FUNC16(&g->block0);
    }
    else if (FUNC13(buffer, "/array %d %d %d", &xc, &yc, &zc) == 3) {
        FUNC1(&g->block1, &g->block0, xc, yc, zc);
    }
    else if (FUNC13(buffer, "/array %d", &count) == 1) {
        FUNC1(&g->block1, &g->block0, count, count, count);
    }
    else if (FUNC14(buffer, "/fcube") == 0) {
        FUNC4(&g->block0, &g->block1, 1);
    }
    else if (FUNC14(buffer, "/cube") == 0) {
        FUNC4(&g->block0, &g->block1, 0);
    }
    else if (FUNC13(buffer, "/fsphere %d", &radius) == 1) {
        FUNC12(&g->block0, radius, 1, 0, 0, 0);
    }
    else if (FUNC13(buffer, "/sphere %d", &radius) == 1) {
        FUNC12(&g->block0, radius, 0, 0, 0, 0);
    }
    else if (FUNC13(buffer, "/fcirclex %d", &radius) == 1) {
        FUNC12(&g->block0, radius, 1, 1, 0, 0);
    }
    else if (FUNC13(buffer, "/circlex %d", &radius) == 1) {
        FUNC12(&g->block0, radius, 0, 1, 0, 0);
    }
    else if (FUNC13(buffer, "/fcircley %d", &radius) == 1) {
        FUNC12(&g->block0, radius, 1, 0, 1, 0);
    }
    else if (FUNC13(buffer, "/circley %d", &radius) == 1) {
        FUNC12(&g->block0, radius, 0, 0, 1, 0);
    }
    else if (FUNC13(buffer, "/fcirclez %d", &radius) == 1) {
        FUNC12(&g->block0, radius, 1, 0, 0, 1);
    }
    else if (FUNC13(buffer, "/circlez %d", &radius) == 1) {
        FUNC12(&g->block0, radius, 0, 0, 0, 1);
    }
    else if (FUNC13(buffer, "/fcylinder %d", &radius) == 1) {
        FUNC5(&g->block0, &g->block1, radius, 1);
    }
    else if (FUNC13(buffer, "/cylinder %d", &radius) == 1) {
        FUNC5(&g->block0, &g->block1, radius, 0);
    }
    else if (forward) {
        FUNC2(buffer);
    }
}