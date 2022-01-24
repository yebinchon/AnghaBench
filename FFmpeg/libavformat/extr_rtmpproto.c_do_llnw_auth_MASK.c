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
typedef  int /*<<< orphan*/  uint8_t ;
struct AVMD5 {int dummy; } ;
typedef  int /*<<< orphan*/  cnonce ;
struct TYPE_3__ {char* password; char* app; int /*<<< orphan*/  auth_params; } ;
typedef  TYPE_1__ RTMPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct AVMD5*) ; 
 int FUNC2 () ; 
 struct AVMD5* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct AVMD5*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct AVMD5*) ; 
 int /*<<< orphan*/  FUNC6 (struct AVMD5*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char) ; 
 int FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11(RTMPContext *rt, const char *user, const char *nonce)
{
    uint8_t hash[16];
    char hashstr1[33], hashstr2[33];
    const char *realm = "live";
    const char *method = "publish";
    const char *qop = "auth";
    const char *nc = "00000001";
    char cnonce[10];
    struct AVMD5 *md5 = FUNC3();
    if (!md5)
        return FUNC0(ENOMEM);

    FUNC8(cnonce, sizeof(cnonce), "%08x", FUNC2());

    FUNC5(md5);
    FUNC6(md5, user, FUNC10(user));
    FUNC6(md5, ":", 1);
    FUNC6(md5, realm, FUNC10(realm));
    FUNC6(md5, ":", 1);
    FUNC6(md5, rt->password, FUNC10(rt->password));
    FUNC4(md5, hash);
    FUNC7(hashstr1, hash, 16, 1);
    hashstr1[32] = '\0';

    FUNC5(md5);
    FUNC6(md5, method, FUNC10(method));
    FUNC6(md5, ":/", 2);
    FUNC6(md5, rt->app, FUNC10(rt->app));
    if (!FUNC9(rt->app, '/'))
        FUNC6(md5, "/_definst_", FUNC10("/_definst_"));
    FUNC4(md5, hash);
    FUNC7(hashstr2, hash, 16, 1);
    hashstr2[32] = '\0';

    FUNC5(md5);
    FUNC6(md5, hashstr1, FUNC10(hashstr1));
    FUNC6(md5, ":", 1);
    if (nonce)
        FUNC6(md5, nonce, FUNC10(nonce));
    FUNC6(md5, ":", 1);
    FUNC6(md5, nc, FUNC10(nc));
    FUNC6(md5, ":", 1);
    FUNC6(md5, cnonce, FUNC10(cnonce));
    FUNC6(md5, ":", 1);
    FUNC6(md5, qop, FUNC10(qop));
    FUNC6(md5, ":", 1);
    FUNC6(md5, hashstr2, FUNC10(hashstr2));
    FUNC4(md5, hash);
    FUNC7(hashstr1, hash, 16, 1);

    FUNC8(rt->auth_params, sizeof(rt->auth_params),
             "?authmod=%s&user=%s&nonce=%s&cnonce=%s&nc=%s&response=%s",
             "llnw", user, nonce, cnonce, nc, hashstr1);

    FUNC1(md5);
    return 0;
}