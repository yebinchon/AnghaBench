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
struct sockopt {int sopt_name; int /*<<< orphan*/  sopt_valsize; int /*<<< orphan*/  sopt_val; } ;
struct socket {int dummy; } ;
struct ndrv_cb {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  LOG_WARNING ; 
#define  NDRV_ADDMULTICAST 131 
#define  NDRV_DELDMXSPEC 130 
#define  NDRV_DELMULTICAST 129 
#define  NDRV_SETDMXSPEC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct ndrv_cb*) ; 
 int FUNC2 (struct ndrv_cb*,struct sockopt*) ; 
 int FUNC3 (struct ndrv_cb*,struct sockopt*) ; 
 int FUNC4 (struct ndrv_cb*,struct sockopt*) ; 
 struct ndrv_cb* FUNC5 (struct socket*) ; 

__attribute__((used)) static int
FUNC6(struct socket *so, struct sockopt *sopt)
{
    struct ndrv_cb *np = FUNC5(so);
	int error = 0;

    switch(sopt->sopt_name)
    {
        case NDRV_DELDMXSPEC: /* Delete current spec */
            /* Verify no parameter was passed */
            if (sopt->sopt_val != 0 || sopt->sopt_valsize != 0) {
                /*
                 * We don't support deleting a specific demux, it's
                 * all or nothing.
                 */
                return EINVAL;
            }
            error = FUNC1(np);
            break;
        case NDRV_SETDMXSPEC: /* Set protocol spec */
            error = FUNC4(np, sopt);
            break;
        case NDRV_ADDMULTICAST:
            error = FUNC2(np, sopt);
            break;
        case NDRV_DELMULTICAST:
            error = FUNC3(np, sopt);
            break;
        default:
            error = ENOTSUP;
    }
#ifdef NDRV_DEBUG
	log(LOG_WARNING, "NDRV CTLOUT: %x returns %d\n", sopt->sopt_name,
	    error);
#endif
	return(error);
}