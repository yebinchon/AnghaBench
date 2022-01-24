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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  state ;
typedef  int /*<<< orphan*/  CABACContext ;
typedef  int /*<<< orphan*/  AVLFG ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 

int FUNC12(void){
    CABACContext c;
    uint8_t b[9*SIZE];
    uint8_t r[9*SIZE];
    int i, ret = 0;
    uint8_t state[10]= {0};
    AVLFG prng;

    FUNC1(&prng, 1);
    FUNC4(&c, b, SIZE);

    for(i=0; i<SIZE; i++){
        if(2*i<SIZE) r[i] = FUNC0(&prng) % 7;
        else         r[i] = (i>>8)&1;
    }

    for(i=0; i<SIZE; i++){
        FUNC10(&c, r[i]&1);
    }

    for(i=0; i<SIZE; i++){
        FUNC9(&c, state, r[i]&1);
    }

    i= FUNC11(&c, 1);
    b[i++] = FUNC0(&prng);
    b[i  ] = FUNC0(&prng);

    FUNC3(&c, b, SIZE);

    FUNC8(state, 0, sizeof(state));

    for(i=0; i<SIZE; i++){
        if( (r[i]&1) != FUNC5(&c) ) {
            FUNC2(NULL, AV_LOG_ERROR, "CABAC bypass failure at %d\n", i);
            ret = 1;
        }
    }

    for(i=0; i<SIZE; i++){
        if( (r[i]&1) != FUNC6(&c, state) ) {
            FUNC2(NULL, AV_LOG_ERROR, "CABAC failure at %d\n", i);
            ret = 1;
        }
    }
    if(!FUNC7(&c)) {
        FUNC2(NULL, AV_LOG_ERROR, "where's the Terminator?\n");
        ret = 1;
    }

    return ret;
}