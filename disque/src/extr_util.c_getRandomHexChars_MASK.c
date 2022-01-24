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
typedef  scalar_t__ uint64_t ;
struct timeval {unsigned char tv_usec; unsigned char tv_sec; } ;
typedef  int /*<<< orphan*/  seed ;
typedef  unsigned char pid_t ;
typedef  int /*<<< orphan*/  pid ;
typedef  int /*<<< orphan*/  counter ;
typedef  int /*<<< orphan*/  SHA1_CTX ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int FUNC5 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 unsigned char FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned char*,int) ; 
 char FUNC9 () ; 

void FUNC10(char *p, unsigned int len) {
    char *charset = "0123456789abcdef";
    unsigned int j;

    /* Global state. */
    static int seed_initialized = 0;
    static unsigned char seed[20]; /* The SHA1 seed, from /dev/urandom. */
    static uint64_t counter = 0; /* The counter we hash with the seed. */

    if (!seed_initialized) {
        /* Initialize a seed and use SHA1 in counter mode, where we hash
         * the same seed with a progressive counter. For the goals of this
         * function we just need non-colliding strings, there are no
         * cryptographic security needs. */
        FILE *fp = FUNC4("/dev/urandom","r");
        if (fp && FUNC5(seed,sizeof(seed),1,fp) == 1)
            seed_initialized = 1;
        if (fp) FUNC3(fp);
    }

    if (seed_initialized) {
        while(len) {
            unsigned char digest[20];
            SHA1_CTX ctx;
            unsigned int copylen = len > 20 ? 20 : len;

            FUNC1(&ctx);
            FUNC2(&ctx, seed, sizeof(seed));
            FUNC2(&ctx, (unsigned char*)&counter,sizeof(counter));
            FUNC0(digest, &ctx);
            counter++;

            FUNC8(p,digest,copylen);
            /* Convert to hex digits. */
            for (j = 0; j < copylen; j++) p[j] = charset[p[j] & 0x0F];
            len -= copylen;
            p += copylen;
        }
    } else {
        /* If we can't read from /dev/urandom, do some reasonable effort
         * in order to create some entropy, since this function is used to
         * generate run_id and cluster instance IDs */
        char *x = p;
        unsigned int l = len;
        struct timeval tv;
        pid_t pid = FUNC6();

        /* Use time and PID to fill the initial array. */
        FUNC7(&tv,NULL);
        if (l >= sizeof(tv.tv_usec)) {
            FUNC8(x,&tv.tv_usec,sizeof(tv.tv_usec));
            l -= sizeof(tv.tv_usec);
            x += sizeof(tv.tv_usec);
        }
        if (l >= sizeof(tv.tv_sec)) {
            FUNC8(x,&tv.tv_sec,sizeof(tv.tv_sec));
            l -= sizeof(tv.tv_sec);
            x += sizeof(tv.tv_sec);
        }
        if (l >= sizeof(pid)) {
            FUNC8(x,&pid,sizeof(pid));
            l -= sizeof(pid);
            x += sizeof(pid);
        }
        /* Finally xor it with rand() output, that was already seeded with
         * time() at startup, and convert to hex digits. */
        for (j = 0; j < len; j++) {
            p[j] ^= FUNC9();
            p[j] = charset[p[j] & 0x0F];
        }
    }
}