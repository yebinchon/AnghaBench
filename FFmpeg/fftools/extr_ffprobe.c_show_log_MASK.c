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
typedef  int /*<<< orphan*/  WriterContext ;
struct TYPE_2__ {int log_level; int category; int parent_category; scalar_t__ log_message; scalar_t__ parent_name; scalar_t__ context_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* log_buffer ; 
 int log_buffer_size ; 
 int /*<<< orphan*/  log_mutex ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(WriterContext *w, int section_ids, int section_id, int log_level)
{
    int i;
    FUNC4(&log_mutex);
    if (!log_buffer_size) {
        FUNC5(&log_mutex);
        return 0;
    }
    FUNC7(w, section_ids);

    for (i=0; i<log_buffer_size; i++) {
        if (log_buffer[i].log_level <= log_level) {
            FUNC7(w, section_id);
            FUNC2("context", log_buffer[i].context_name);
            FUNC1("level", log_buffer[i].log_level);
            FUNC1("category", log_buffer[i].category);
            if (log_buffer[i].parent_name) {
                FUNC2("parent_context", log_buffer[i].parent_name);
                FUNC1("parent_category", log_buffer[i].parent_category);
            } else {
                FUNC3("parent_context", "N/A");
                FUNC3("parent_category", "N/A");
            }
            FUNC2("message", log_buffer[i].log_message);
            FUNC6(w);
        }
    }
    FUNC0(0);
    FUNC5(&log_mutex);

    FUNC6(w);

    return 0;
}