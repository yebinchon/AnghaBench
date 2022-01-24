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
struct TYPE_3__ {char* extra_activity_path; int /*<<< orphan*/  extra_activity_buffer; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  GtkTextIter ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t ACTIVITY_MAX_READ_SZ ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (size_t) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 

__attribute__((used)) static void FUNC13(signal_user_data_t * ud, const char * log_path)
{
    FILE        * f;
    size_t        size, req_size;
    GtkTextIter   iter;
    char        * buf;

    if (ud->extra_activity_path != NULL &&
        !FUNC12(ud->extra_activity_path, log_path))
    {
        return;
    }
    FUNC6(ud->extra_activity_path);
    ud->extra_activity_path = FUNC8(log_path);

    FUNC11(ud->extra_activity_buffer, "", 0);

    f = FUNC5(log_path, "r");
    if (f == NULL)
    {
        return;
    }
    FUNC3(f, 0, SEEK_END);
    req_size = FUNC4(f);
    FUNC3(f, 0, SEEK_SET);
    if (req_size > ACTIVITY_MAX_READ_SZ)
    {
        req_size = ACTIVITY_MAX_READ_SZ;
    }
    buf = FUNC7(req_size);
    while (!FUNC1(f))
    {
        size = FUNC2(buf, 1, req_size, f);
        if (size <= 0)
        {
            break;
        }
        FUNC9(ud->extra_activity_buffer, &iter);
        FUNC10(ud->extra_activity_buffer, &iter, buf, size);
    }
    FUNC0(f);
    FUNC6(buf);
}