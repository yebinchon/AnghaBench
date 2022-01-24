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
typedef  char* sds ;
struct TYPE_3__ {int type; char* str; unsigned int elements; struct TYPE_3__** element; int /*<<< orphan*/  len; int /*<<< orphan*/  integer; } ;
typedef  TYPE_1__ redisReply ;
typedef  int /*<<< orphan*/  _prefixfmt ;

/* Variables and functions */
#define  REDIS_REPLY_ARRAY 133 
#define  REDIS_REPLY_ERROR 132 
#define  REDIS_REPLY_INTEGER 131 
#define  REDIS_REPLY_NIL 130 
#define  REDIS_REPLY_STATUS 129 
#define  REDIS_REPLY_STRING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,unsigned int) ; 
 char* FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char*,char*,...) ; 
 char* FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static sds FUNC12(redisReply *r, char *prefix) {
    sds out = FUNC7();
    switch (r->type) {
    case REDIS_REPLY_ERROR:
        out = FUNC5(out,"(error) %s\n", r->str);
    break;
    case REDIS_REPLY_STATUS:
        out = FUNC3(out,r->str);
        out = FUNC3(out,"\n");
    break;
    case REDIS_REPLY_INTEGER:
        out = FUNC5(out,"(integer) %lld\n",r->integer);
    break;
    case REDIS_REPLY_STRING:
        /* If you are producing output for the standard output we want
        * a more interesting output with quoted characters and so forth */
        out = FUNC6(out,r->str,r->len);
        out = FUNC3(out,"\n");
    break;
    case REDIS_REPLY_NIL:
        out = FUNC3(out,"(nil)\n");
    break;
    case REDIS_REPLY_ARRAY:
        if (r->elements == 0) {
            out = FUNC3(out,"(empty list or set)\n");
        } else {
            unsigned int i, idxlen = 0;
            char _prefixlen[16];
            char _prefixfmt[16];
            sds _prefix;
            sds tmp;

            /* Calculate chars needed to represent the largest index */
            i = r->elements;
            do {
                idxlen++;
                i /= 10;
            } while(i);

            /* Prefix for nested multi bulks should grow with idxlen+2 spaces */
            FUNC2(_prefixlen,' ',idxlen+2);
            _prefixlen[idxlen+2] = '\0';
            _prefix = FUNC3(FUNC10(prefix),_prefixlen);

            /* Setup prefix format for every entry */
            FUNC11(_prefixfmt,sizeof(_prefixfmt),"%%s%%%ud) ",idxlen);

            for (i = 0; i < r->elements; i++) {
                /* Don't use the prefix for the first element, as the parent
                 * caller already prepended the index number. */
                out = FUNC5(out,_prefixfmt,i == 0 ? "" : prefix,i+1);

                /* Format the multi bulk entry */
                tmp = FUNC12(r->element[i],_prefix);
                out = FUNC4(out,tmp,FUNC9(tmp));
                FUNC8(tmp);
            }
            FUNC8(_prefix);
        }
    break;
    default:
        FUNC1(stderr,"Unknown reply type: %d\n", r->type);
        FUNC0(1);
    }
    return out;
}