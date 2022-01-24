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
typedef  size_t ssize_t ;
struct TYPE_2__ {scalar_t__ rx_mode; int /*<<< orphan*/  read_lock; } ;

/* Variables and functions */
 scalar_t__ ESP_LINE_ENDINGS_CR ; 
 scalar_t__ ESP_LINE_ENDINGS_CRLF ; 
 int /*<<< orphan*/  EWOULDBLOCK ; 
 int NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 TYPE_1__** s_ctx ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static ssize_t FUNC5(int fd, void* data, size_t size)
{
    FUNC2(fd >=0 && fd < 3);
    char *data_c = (char *) data;
    size_t received = 0;
    FUNC0(&s_ctx[fd]->read_lock);
    while (received < size) {
        int c = FUNC3(fd);
        if (c == '\r') {
            if (s_ctx[fd]->rx_mode == ESP_LINE_ENDINGS_CR) {
                c = '\n';
            } else if (s_ctx[fd]->rx_mode == ESP_LINE_ENDINGS_CRLF) {
                /* look ahead */
                int c2 = FUNC3(fd);
                if (c2 == NONE) {
                    /* could not look ahead, put the current character back */
                    FUNC4(fd, c);
                    break;
                }
                if (c2 == '\n') {
                    /* this was \r\n sequence. discard \r, return \n */
                    c = '\n';
                } else {
                    /* \r followed by something else. put the second char back,
                     * it will be processed on next iteration. return \r now.
                     */
                    FUNC4(fd, c2);
                }
            }
        } else if (c == NONE) {
            break;
        }
        data_c[received] = (char) c;
        ++received;
        if (c == '\n') {
            break;
        }
    }
    FUNC1(&s_ctx[fd]->read_lock);
    if (received > 0) {
        return received;
    }
    errno = EWOULDBLOCK;
    return -1;
}