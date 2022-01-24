#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xSemaphoreHandle ;
typedef  int /*<<< orphan*/  output2 ;
typedef  int /*<<< orphan*/  output ;
typedef  int /*<<< orphan*/  input ;
struct TYPE_4__ {int key_bytes; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ esp_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned char const*,unsigned char*) ; 
 int exit_flag ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    FUNC0(TAG, "aes_task is started");
    esp_aes_context ctx = {
            .key_bytes = 16,
            .key = {101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116}
    };
    const unsigned char input[16] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    unsigned char output[16];
    unsigned char output2[16];
    while (exit_flag == false) {
        FUNC4(output, 0, sizeof(output));
        FUNC4(output, 0, sizeof(output2));
        FUNC3(&ctx, input, output);
        FUNC2(&ctx, output, output2);
        FUNC1(input, output2, sizeof(input), "AES must match");
    }
    FUNC6(*sema);
    FUNC5(NULL);
}