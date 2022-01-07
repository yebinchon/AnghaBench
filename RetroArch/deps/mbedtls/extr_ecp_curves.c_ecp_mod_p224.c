
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

__attribute__((used)) static int ecp_mod_p224( mbedtls_mpi *N )
{
    INIT( 224 );

    SUB( 7 ); SUB( 11 ); NEXT;
    SUB( 8 ); SUB( 12 ); NEXT;
    SUB( 9 ); SUB( 13 ); NEXT;
    SUB( 10 ); ADD( 7 ); ADD( 11 ); NEXT;
    SUB( 11 ); ADD( 8 ); ADD( 12 ); NEXT;
    SUB( 12 ); ADD( 9 ); ADD( 13 ); NEXT;
    SUB( 13 ); ADD( 10 ); LAST;

cleanup:
    return( ret );
}
