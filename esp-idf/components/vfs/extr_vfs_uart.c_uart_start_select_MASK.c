#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void** readfds; void** writefds; void** errorfds; int /*<<< orphan*/  select_sem; void* readfds_orig; void* errorfds_orig; void* writefds_orig; } ;
typedef  TYPE_1__ uart_select_args_t ;
typedef  void* fd_set ;
typedef  int /*<<< orphan*/  esp_vfs_select_sem_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC0 (int,void**) ; 
 int /*<<< orphan*/  FUNC1 (int,void**) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_NUM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  select_notif_callback_isr ; 
 scalar_t__ FUNC10 (int,size_t*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC13(int nfds, fd_set *readfds, fd_set *writefds, fd_set *exceptfds,
        esp_vfs_select_sem_t select_sem, void **end_select_args)
{
    const int max_fds = FUNC3(nfds, UART_NUM);
    *end_select_args = NULL;

    uart_select_args_t *args = FUNC6(sizeof(uart_select_args_t));

    if (args == NULL) {
        return ESP_ERR_NO_MEM;
    }

    args->select_sem = select_sem;
    args->readfds = readfds;
    args->writefds = writefds;
    args->errorfds = exceptfds;
    args->readfds_orig = *readfds; // store the original values because they will be set to zero
    args->writefds_orig = *writefds;
    args->errorfds_orig = *exceptfds;
    FUNC2(readfds);
    FUNC2(writefds);
    FUNC2(exceptfds);

    FUNC7(FUNC11());

    //uart_set_select_notif_callback sets the callbacks in UART ISR
    for (int i = 0; i < max_fds; ++i) {
        if (FUNC0(i, &args->readfds_orig) || FUNC0(i, &args->writefds_orig) || FUNC0(i, &args->errorfds_orig)) {
            FUNC12(i, select_notif_callback_isr);
        }
    }

    for (int i = 0; i < max_fds; ++i) {
        if (FUNC0(i, &args->readfds_orig)) {
            size_t buffered_size;
            if (FUNC10(i, &buffered_size) == ESP_OK && buffered_size > 0) {
                // signalize immediately when data is buffered
                FUNC1(i, readfds);
                FUNC4(args->select_sem);
            }
        }
    }

    esp_err_t ret = FUNC9(args);
    if (ret != ESP_OK) {
        FUNC8(FUNC11());
        FUNC5(args);
        return ret;
    }

    FUNC8(FUNC11());

    *end_select_args = args;
    return ESP_OK;
}