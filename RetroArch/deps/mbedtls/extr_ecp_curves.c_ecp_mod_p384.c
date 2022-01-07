
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_mpi ;


 int ADD (int) ;
 int INIT (int) ;
 int LAST ;
 int NEXT ;
 int SUB (int) ;
 int ret ;

__attribute__((used)) static int ecp_mod_p384( mbedtls_mpi *N )
{
    INIT( 384 );

    ADD( 12 ); ADD( 21 ); ADD( 20 );
    SUB( 23 ); NEXT;

    ADD( 13 ); ADD( 22 ); ADD( 23 );
    SUB( 12 ); SUB( 20 ); NEXT;

    ADD( 14 ); ADD( 23 );
    SUB( 13 ); SUB( 21 ); NEXT;

    ADD( 15 ); ADD( 12 ); ADD( 20 ); ADD( 21 );
    SUB( 14 ); SUB( 22 ); SUB( 23 ); NEXT;

    ADD( 21 ); ADD( 21 ); ADD( 16 ); ADD( 13 ); ADD( 12 ); ADD( 20 ); ADD( 22 );
    SUB( 15 ); SUB( 23 ); SUB( 23 ); NEXT;

    ADD( 22 ); ADD( 22 ); ADD( 17 ); ADD( 14 ); ADD( 13 ); ADD( 21 ); ADD( 23 );
    SUB( 16 ); NEXT;

    ADD( 23 ); ADD( 23 ); ADD( 18 ); ADD( 15 ); ADD( 14 ); ADD( 22 );
    SUB( 17 ); NEXT;

    ADD( 19 ); ADD( 16 ); ADD( 15 ); ADD( 23 );
    SUB( 18 ); NEXT;

    ADD( 20 ); ADD( 17 ); ADD( 16 );
    SUB( 19 ); NEXT;

    ADD( 21 ); ADD( 18 ); ADD( 17 );
    SUB( 20 ); NEXT;

    ADD( 22 ); ADD( 19 ); ADD( 18 );
    SUB( 21 ); NEXT;

    ADD( 23 ); ADD( 20 ); ADD( 19 );
    SUB( 22 ); LAST;

cleanup:
    return( ret );
}
