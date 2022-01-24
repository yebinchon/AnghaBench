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
struct TYPE_5__ {int write_out_ptr; int out_buffer; int /*<<< orphan*/  mms_hd; } ;
struct TYPE_4__ {TYPE_2__ mms; } ;
typedef  TYPE_1__ MMSTContext ;
typedef  TYPE_2__ MMSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(MMSTContext *mmst)
{
    MMSContext *mms  = &mmst->mms;
    int len= mms->write_out_ptr - mms->out_buffer;
    int exact_length = FUNC3(len, 8);
    int first_length= exact_length - 16;
    int len8= first_length/8;
    int write_result;

    // update packet length fields.
    FUNC2(mms->out_buffer + 8, first_length);
    FUNC2(mms->out_buffer + 16, len8);
    FUNC2(mms->out_buffer + 32, len8-2);
    FUNC6(mms->write_out_ptr, 0, exact_length - len);

    // write it out.
    write_result= FUNC5(mms->mms_hd, mms->out_buffer, exact_length);
    if(write_result != exact_length) {
        FUNC4(mms->mms_hd, AV_LOG_ERROR,
               "Failed to write data of length %d: %d (%s)\n",
               exact_length, write_result,
               write_result < 0 ? FUNC7(FUNC1(write_result)) :
                   "The server closed the connection");
        return FUNC0(EIO);
    }

    return 0;
}