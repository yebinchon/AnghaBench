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
typedef  int /*<<< orphan*/  rdbuf ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  TABLE_MEM_QBOT ; 
 int /*<<< orphan*/  TABLE_MEM_QBOT2 ; 
 int /*<<< orphan*/  TABLE_MEM_QBOT3 ; 
 int /*<<< orphan*/  TABLE_MEM_UPX ; 
 int /*<<< orphan*/  TABLE_MEM_ZOLLARD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int,char*,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC7(char *path)
{
    int fd, ret;
    char rdbuf[4096];
    char *m_qbot_report, *m_qbot_http, *m_qbot_dup, *m_upx_str, *m_zollard;
    int m_qbot_len, m_qbot2_len, m_qbot3_len, m_upx_len, m_zollard_len;
    BOOL found = FALSE;

    if ((fd = FUNC2(path, O_RDONLY)) == -1)
        return FALSE;

    FUNC6(TABLE_MEM_QBOT);
    FUNC6(TABLE_MEM_QBOT2);
    FUNC6(TABLE_MEM_QBOT3);
    FUNC6(TABLE_MEM_UPX);
    FUNC6(TABLE_MEM_ZOLLARD);

    m_qbot_report = FUNC5(TABLE_MEM_QBOT, &m_qbot_len);
    m_qbot_http = FUNC5(TABLE_MEM_QBOT2, &m_qbot2_len);
    m_qbot_dup = FUNC5(TABLE_MEM_QBOT3, &m_qbot3_len);
    m_upx_str = FUNC5(TABLE_MEM_UPX, &m_upx_len);
    m_zollard = FUNC5(TABLE_MEM_ZOLLARD, &m_zollard_len);

    while ((ret = FUNC3(fd, rdbuf, sizeof (rdbuf))) > 0)
    {
        if (FUNC1(rdbuf, ret, m_qbot_report, m_qbot_len) ||
            FUNC1(rdbuf, ret, m_qbot_http, m_qbot2_len) ||
            FUNC1(rdbuf, ret, m_qbot_dup, m_qbot3_len) ||
            FUNC1(rdbuf, ret, m_upx_str, m_upx_len) ||
            FUNC1(rdbuf, ret, m_zollard, m_zollard_len))
        {
            found = TRUE;
            break;
        }
    }

    FUNC4(TABLE_MEM_QBOT);
    FUNC4(TABLE_MEM_QBOT2);
    FUNC4(TABLE_MEM_QBOT3);
    FUNC4(TABLE_MEM_UPX);
    FUNC4(TABLE_MEM_ZOLLARD);

    FUNC0(fd);

    return found;
}