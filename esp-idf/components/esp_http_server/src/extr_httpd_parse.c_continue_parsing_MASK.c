#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t pre_parsed; int paused; } ;
typedef  TYPE_1__ parser_data_t ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef  TYPE_2__ http_parser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC4(http_parser *parser, size_t length)
{
    parser_data_t *data = (parser_data_t *) parser->data;

    /* Part of the received data may have been parsed earlier
     * so we must skip that before parsing resumes */
    length = FUNC2(length, data->pre_parsed);
    data->pre_parsed -= length;
    FUNC0(TAG, FUNC1("skip pre-parsed data of size = %d"), length);

    FUNC3(parser, 0);
    data->paused = false;
    FUNC0(TAG, FUNC1("un-paused"));
    return length;
}