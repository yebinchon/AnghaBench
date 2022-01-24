#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct AVMD5 {int dummy; } ;
typedef  int /*<<< orphan*/  nc ;
typedef  int /*<<< orphan*/  cnonce_buf ;
struct TYPE_5__ {int nc; char* algorithm; char* nonce; char* qop; char* opaque; } ;
struct TYPE_4__ {char* realm; TYPE_2__ digest_params; } ;
typedef  TYPE_1__ HTTPAuthState ;
typedef  TYPE_2__ DigestParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct AVMD5*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int) ; 
 struct AVMD5* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct AVMD5*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct AVMD5*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct AVMD5*,char const*,char*,char const*,...) ; 

__attribute__((used)) static char *FUNC12(HTTPAuthState *state, const char *username,
                              const char *password, const char *uri,
                              const char *method)
{
    DigestParams *digest = &state->digest_params;
    int len;
    uint32_t cnonce_buf[2];
    char cnonce[17];
    char nc[9];
    int i;
    char A1hash[33], A2hash[33], response[33];
    struct AVMD5 *md5ctx;
    uint8_t hash[16];
    char *authstr;

    digest->nc++;
    FUNC8(nc, sizeof(nc), "%08x", digest->nc);

    /* Generate a client nonce. */
    for (i = 0; i < 2; i++)
        cnonce_buf[i] = FUNC1();
    FUNC7(cnonce, (const uint8_t*) cnonce_buf, sizeof(cnonce_buf), 1);
    cnonce[2*sizeof(cnonce_buf)] = 0;

    md5ctx = FUNC3();
    if (!md5ctx)
        return NULL;

    FUNC5(md5ctx);
    FUNC11(md5ctx, username, ":", state->realm, ":", password, NULL);
    FUNC4(md5ctx, hash);
    FUNC7(A1hash, hash, 16, 1);
    A1hash[32] = 0;

    if (!FUNC9(digest->algorithm, "") || !FUNC9(digest->algorithm, "MD5")) {
    } else if (!FUNC9(digest->algorithm, "MD5-sess")) {
        FUNC5(md5ctx);
        FUNC11(md5ctx, A1hash, ":", digest->nonce, ":", cnonce, NULL);
        FUNC4(md5ctx, hash);
        FUNC7(A1hash, hash, 16, 1);
        A1hash[32] = 0;
    } else {
        /* Unsupported algorithm */
        FUNC0(md5ctx);
        return NULL;
    }

    FUNC5(md5ctx);
    FUNC11(md5ctx, method, ":", uri, NULL);
    FUNC4(md5ctx, hash);
    FUNC7(A2hash, hash, 16, 1);
    A2hash[32] = 0;

    FUNC5(md5ctx);
    FUNC11(md5ctx, A1hash, ":", digest->nonce, NULL);
    if (!FUNC9(digest->qop, "auth") || !FUNC9(digest->qop, "auth-int")) {
        FUNC11(md5ctx, ":", nc, ":", cnonce, ":", digest->qop, NULL);
    }
    FUNC11(md5ctx, ":", A2hash, NULL);
    FUNC4(md5ctx, hash);
    FUNC7(response, hash, 16, 1);
    response[32] = 0;

    FUNC0(md5ctx);

    if (!FUNC9(digest->qop, "") || !FUNC9(digest->qop, "auth")) {
    } else if (!FUNC9(digest->qop, "auth-int")) {
        /* qop=auth-int not supported */
        return NULL;
    } else {
        /* Unsupported qop value. */
        return NULL;
    }

    len = FUNC10(username) + FUNC10(state->realm) + FUNC10(digest->nonce) +
              FUNC10(uri) + FUNC10(response) + FUNC10(digest->algorithm) +
              FUNC10(digest->opaque) + FUNC10(digest->qop) + FUNC10(cnonce) +
              FUNC10(nc) + 150;

    authstr = FUNC2(len);
    if (!authstr)
        return NULL;
    FUNC8(authstr, len, "Authorization: Digest ");

    /* TODO: Escape the quoted strings properly. */
    FUNC6(authstr, len, "username=\"%s\"",   username);
    FUNC6(authstr, len, ", realm=\"%s\"",     state->realm);
    FUNC6(authstr, len, ", nonce=\"%s\"",     digest->nonce);
    FUNC6(authstr, len, ", uri=\"%s\"",       uri);
    FUNC6(authstr, len, ", response=\"%s\"",  response);

    // we are violating the RFC and use "" because all others seem to do that too.
    if (digest->algorithm[0])
        FUNC6(authstr, len, ", algorithm=\"%s\"",  digest->algorithm);

    if (digest->opaque[0])
        FUNC6(authstr, len, ", opaque=\"%s\"", digest->opaque);
    if (digest->qop[0]) {
        FUNC6(authstr, len, ", qop=\"%s\"",    digest->qop);
        FUNC6(authstr, len, ", cnonce=\"%s\"", cnonce);
        FUNC6(authstr, len, ", nc=%s",         nc);
    }

    FUNC6(authstr, len, "\r\n");

    return authstr;
}