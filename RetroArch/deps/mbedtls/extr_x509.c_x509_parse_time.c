
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int year; int mon; int day; int hour; int min; int sec; } ;
typedef TYPE_1__ mbedtls_x509_time ;


 int CHECK (int ) ;
 int MBEDTLS_ERR_X509_INVALID_DATE ;
 int x509_date_is_valid (TYPE_1__*) ;
 int x509_parse_int (unsigned char**,int,int*) ;

__attribute__((used)) static int x509_parse_time( unsigned char **p, size_t len, size_t yearlen,
        mbedtls_x509_time *time )
{
    int ret;




    if ( len < yearlen + 8 )
        return ( MBEDTLS_ERR_X509_INVALID_DATE );
    len -= yearlen + 8;




    CHECK( x509_parse_int( p, yearlen, &time->year ) );
    if ( 2 == yearlen )
    {
        if ( time->year < 50 )
            time->year += 100;

        time->year += 1900;
    }

    CHECK( x509_parse_int( p, 2, &time->mon ) );
    CHECK( x509_parse_int( p, 2, &time->day ) );
    CHECK( x509_parse_int( p, 2, &time->hour ) );
    CHECK( x509_parse_int( p, 2, &time->min ) );




    if ( len >= 2 )
    {
        CHECK( x509_parse_int( p, 2, &time->sec ) );
        len -= 2;
    }
    else
        return ( MBEDTLS_ERR_X509_INVALID_DATE );




    if ( 1 == len && 'Z' == **p )
    {
        (*p)++;
        len--;
    }




    if ( 0 != len )
        return ( MBEDTLS_ERR_X509_INVALID_DATE );

    CHECK( x509_date_is_valid( time ) );

    return ( 0 );
}
