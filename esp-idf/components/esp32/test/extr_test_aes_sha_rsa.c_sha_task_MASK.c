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
typedef  int /*<<< orphan*/  xSemaphoreHandle ;
typedef  int /*<<< orphan*/  output ;
typedef  int /*<<< orphan*/  input ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SHA2_512 ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char const*,int,unsigned char*) ; 
 int exit_flag ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    FUNC0(TAG, "sha_task is started");
    const char *input = "Space!#$%&()*+,-.0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_abcdefghijklmnopqrstuvwxyz~DEL0123456789";
    unsigned char output[64];
    unsigned char output_origin[64];
    FUNC2(SHA2_512, (const unsigned char *)input, sizeof(input), output);
    FUNC3(output_origin, output, sizeof(output));
    while (exit_flag == false) {
        FUNC4(output, 0, sizeof(output));
        FUNC2(SHA2_512, (const unsigned char *)input, sizeof(input), output);
        FUNC1(output, output_origin, sizeof(output), "SHA256 must match");
    }
    FUNC6(*sema);
    FUNC5(NULL);
}