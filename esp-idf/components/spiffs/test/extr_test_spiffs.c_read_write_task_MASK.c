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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  rval ;
struct TYPE_2__ {size_t word_count; int /*<<< orphan*/  done; void* result; scalar_t__ write; int /*<<< orphan*/  seed; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ read_write_test_arg_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* ESP_ERR_NOT_FOUND ; 
 void* ESP_FAIL ; 
 void* ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void* param)
{
    read_write_test_arg_t* args = (read_write_test_arg_t*) param;
    FILE* f = FUNC2(args->filename, args->write ? "wb" : "rb");
    if (f == NULL) {
        args->result = ESP_ERR_NOT_FOUND;
        goto done;
    }

    FUNC6(args->seed);
    for (size_t i = 0; i < args->word_count; ++i) {
        uint32_t val = FUNC5();
        if (args->write) {
            int cnt = FUNC4(&val, sizeof(val), 1, f);
            if (cnt != 1) {
                FUNC0("E(w): i=%d, cnt=%d val=%d\n\n", i, cnt, val);
                args->result = ESP_FAIL;
                goto close;
            }
        } else {
            uint32_t rval;
            int cnt = FUNC3(&rval, sizeof(rval), 1, f);
            if (cnt != 1) {
                FUNC0("E(r): i=%d, cnt=%d rval=%d\n\n", i, cnt, rval);
                args->result = ESP_FAIL;
                goto close;
            }
        }
    }
    args->result = ESP_OK;

close:
    FUNC1(f);

done:
    FUNC9(args->done);
    FUNC7(1);
    FUNC8(NULL);
}