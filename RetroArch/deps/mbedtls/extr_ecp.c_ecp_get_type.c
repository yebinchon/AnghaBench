
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * p; } ;
struct TYPE_6__ {int * p; } ;
struct TYPE_8__ {TYPE_2__ Y; TYPE_1__ X; } ;
struct TYPE_9__ {TYPE_3__ G; } ;
typedef TYPE_4__ mbedtls_ecp_group ;
typedef int ecp_curve_type ;


 int ECP_TYPE_MONTGOMERY ;
 int ECP_TYPE_NONE ;
 int ECP_TYPE_SHORT_WEIERSTRASS ;

__attribute__((used)) static ecp_curve_type ecp_get_type( const mbedtls_ecp_group *grp )
{
    if( grp->G.X.p == ((void*)0) )
        return( ECP_TYPE_NONE );

    if( grp->G.Y.p == ((void*)0) )
        return( ECP_TYPE_MONTGOMERY );
    return( ECP_TYPE_SHORT_WEIERSTRASS );
}
