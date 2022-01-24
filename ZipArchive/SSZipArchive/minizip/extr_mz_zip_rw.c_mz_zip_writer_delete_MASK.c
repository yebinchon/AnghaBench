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
struct TYPE_4__ {scalar_t__ cert_data_size; struct TYPE_4__* cert_data; } ;
typedef  TYPE_1__ mz_zip_writer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(void **handle)
{
    mz_zip_writer *writer = NULL;
    if (handle == NULL)
        return;
    writer = (mz_zip_writer *)*handle;
    if (writer != NULL)
    {
        FUNC1(writer);

        if (writer->cert_data != NULL)
            FUNC0(writer->cert_data);

        writer->cert_data = NULL;
        writer->cert_data_size = 0;

        FUNC0(writer);
    }
    *handle = NULL;
}