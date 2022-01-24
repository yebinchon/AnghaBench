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
typedef  int /*<<< orphan*/  hashstr ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  challenge2 ;
struct TYPE_3__ {char* password; int /*<<< orphan*/  auth_params; } ;
typedef  TYPE_1__ RTMPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct AVMD5*) ; 
 int FUNC4 () ; 
 struct AVMD5* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct AVMD5*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct AVMD5*) ; 
 int /*<<< orphan*/  FUNC8 (struct AVMD5*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12(RTMPContext *rt, const char *user, const char *salt,
                         const char *opaque, const char *challenge)
{
    uint8_t hash[16];
    char hashstr[FUNC1(sizeof(hash))], challenge2[10];
    struct AVMD5 *md5 = FUNC5();
    if (!md5)
        return FUNC0(ENOMEM);

    FUNC10(challenge2, sizeof(challenge2), "%08x", FUNC4());

    FUNC7(md5);
    FUNC8(md5, user, FUNC11(user));
    FUNC8(md5, salt, FUNC11(salt));
    FUNC8(md5, rt->password, FUNC11(rt->password));
    FUNC6(md5, hash);
    FUNC2(hashstr, sizeof(hashstr), hash,
                     sizeof(hash));
    FUNC7(md5);
    FUNC8(md5, hashstr, FUNC11(hashstr));
    if (opaque)
        FUNC8(md5, opaque, FUNC11(opaque));
    else if (challenge)
        FUNC8(md5, challenge, FUNC11(challenge));
    FUNC8(md5, challenge2, FUNC11(challenge2));
    FUNC6(md5, hash);
    FUNC2(hashstr, sizeof(hashstr), hash,
                     sizeof(hash));
    FUNC10(rt->auth_params, sizeof(rt->auth_params),
             "?authmod=%s&user=%s&challenge=%s&response=%s",
             "adobe", user, challenge2, hashstr);
    if (opaque)
        FUNC9(rt->auth_params, sizeof(rt->auth_params),
                    "&opaque=%s", opaque);

    FUNC3(md5);
    return 0;
}