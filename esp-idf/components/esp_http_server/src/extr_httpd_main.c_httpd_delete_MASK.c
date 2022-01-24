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
struct httpd_req_aux {struct httpd_data* resp_hdrs; } ;
struct httpd_data {struct httpd_data* hd_calls; struct httpd_data* hd_sd; struct httpd_data* err_handler_fns; struct httpd_req_aux hd_req_aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct httpd_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct httpd_data*) ; 

__attribute__((used)) static void FUNC2(struct httpd_data *hd)
{
    struct httpd_req_aux *ra = &hd->hd_req_aux;
    /* Free memory of httpd instance data */
    FUNC0(hd->err_handler_fns);
    FUNC0(ra->resp_hdrs);
    FUNC0(hd->hd_sd);

    /* Free registered URI handlers */
    FUNC1(hd);
    FUNC0(hd->hd_calls);
    FUNC0(hd);
}