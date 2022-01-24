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
struct sockopt {scalar_t__ sopt_dir; int sopt_name; int /*<<< orphan*/  sopt_p; } ;
struct dn_pipe {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
#define  IP_DUMMYNET_CONFIGURE 131 
#define  IP_DUMMYNET_DEL 130 
#define  IP_DUMMYNET_FLUSH 129 
#define  IP_DUMMYNET_GET 128 
 scalar_t__ SOPT_SET ; 
 int FUNC0 (struct dn_pipe*) ; 
 int FUNC1 (struct sockopt*,struct dn_pipe*) ; 
 int FUNC2 (struct sockopt*,struct dn_pipe*) ; 
 int FUNC3 (struct dn_pipe*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct sockopt*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int securelevel ; 

__attribute__((used)) static int
FUNC8(struct sockopt *sopt)
{
    int error = 0 ;
    struct dn_pipe *p, tmp_pipe;

    /* Disallow sets in really-really secure mode. */
    if (sopt->sopt_dir == SOPT_SET && securelevel >= 3)
	return (EPERM);

    switch (sopt->sopt_name) {
    default :
	FUNC6("dummynet: -- unknown option %d", sopt->sopt_name);
	return EINVAL ;

    case IP_DUMMYNET_GET :
	error = FUNC5(sopt);
	break ;

    case IP_DUMMYNET_FLUSH :
	FUNC4() ;
	break ;

    case IP_DUMMYNET_CONFIGURE :
	p = &tmp_pipe ;
	if (FUNC7(sopt->sopt_p))
		error = FUNC2( sopt, p );
	else
		error = FUNC1( sopt, p );

	if (error)
	    break ;
	error = FUNC0(p);
	break ;

    case IP_DUMMYNET_DEL :	/* remove a pipe or queue */
	p = &tmp_pipe ;
	if (FUNC7(sopt->sopt_p))
		error = FUNC2( sopt, p );
	else
		error = FUNC1( sopt, p );
	if (error)
	    break ;

	error = FUNC3(p);
	break ;
    }
    return error ;
}