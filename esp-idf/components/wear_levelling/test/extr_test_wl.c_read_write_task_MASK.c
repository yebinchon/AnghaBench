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
struct TYPE_2__ {size_t word_count; int /*<<< orphan*/  done; void* result; scalar_t__ offset; int /*<<< orphan*/  handle; scalar_t__ write; int /*<<< orphan*/  seed; } ;
typedef  TYPE_1__ read_write_test_arg_t ;
typedef  void* esp_err_t ;

/* Variables and functions */
 void* ESP_FAIL ; 
 void* ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void* param)
{
    read_write_test_arg_t* args = (read_write_test_arg_t*) param;
    esp_err_t err;
    FUNC2(args->seed);
    for (size_t i = 0; i < args->word_count; ++i) {
        uint32_t val = FUNC1();
        if (args->write) {
            err = FUNC6(args->handle, args->offset + i * sizeof(val), &val, sizeof(val));
            if (err != ESP_OK) {
                args->result = err;
                goto done;
            }
        } else {
            uint32_t rval;
            err = FUNC5(args->handle, args->offset + i * sizeof(rval), &rval, sizeof(rval));
            if (err != ESP_OK || rval != val) {
                FUNC0("E: i=%d, cnt=%d rval=%d val=%d\n\n", i, args->word_count, rval, val);
                args->result = ESP_FAIL;
                goto done;
            }
        }
    }
    args->result = ESP_OK;

done:
    FUNC7(args->done);
    FUNC3(1);
    FUNC4(NULL);
}