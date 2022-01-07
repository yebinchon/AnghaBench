
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

__attribute__((used)) static int ecp_mod_p256( mbedtls_mpi *N )
{
    INIT( 256 );

    ADD( 8 ); ADD( 9 );
    SUB( 11 ); SUB( 12 ); SUB( 13 ); SUB( 14 ); NEXT;

    ADD( 9 ); ADD( 10 );
    SUB( 12 ); SUB( 13 ); SUB( 14 ); SUB( 15 ); NEXT;

    ADD( 10 ); ADD( 11 );
    SUB( 13 ); SUB( 14 ); SUB( 15 ); NEXT;

    ADD( 11 ); ADD( 11 ); ADD( 12 ); ADD( 12 ); ADD( 13 );
    SUB( 15 ); SUB( 8 ); SUB( 9 ); NEXT;

    ADD( 12 ); ADD( 12 ); ADD( 13 ); ADD( 13 ); ADD( 14 );
    SUB( 9 ); SUB( 10 ); NEXT;

    ADD( 13 ); ADD( 13 ); ADD( 14 ); ADD( 14 ); ADD( 15 );
    SUB( 10 ); SUB( 11 ); NEXT;

    ADD( 14 ); ADD( 14 ); ADD( 15 ); ADD( 15 ); ADD( 14 ); ADD( 13 );
    SUB( 8 ); SUB( 9 ); NEXT;

    ADD( 15 ); ADD( 15 ); ADD( 15 ); ADD( 8 );
    SUB( 10 ); SUB( 11 ); SUB( 12 ); SUB( 13 ); LAST;

cleanup:
    return( ret );
}
