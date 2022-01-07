
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ year; scalar_t__ mon; scalar_t__ day; scalar_t__ hour; scalar_t__ min; scalar_t__ sec; } ;
typedef TYPE_1__ mbedtls_x509_time ;



__attribute__((used)) static int x509_check_time( const mbedtls_x509_time *before, const mbedtls_x509_time *after )
{
    if( before->year > after->year )
        return( 1 );

    if( before->year == after->year &&
        before->mon > after->mon )
        return( 1 );

    if( before->year == after->year &&
        before->mon == after->mon &&
        before->day > after->day )
        return( 1 );

    if( before->year == after->year &&
        before->mon == after->mon &&
        before->day == after->day &&
        before->hour > after->hour )
        return( 1 );

    if( before->year == after->year &&
        before->mon == after->mon &&
        before->day == after->day &&
        before->hour == after->hour &&
        before->min > after->min )
        return( 1 );

    if( before->year == after->year &&
        before->mon == after->mon &&
        before->day == after->day &&
        before->hour == after->hour &&
        before->min == after->min &&
        before->sec > after->sec )
        return( 1 );

    return( 0 );
}
