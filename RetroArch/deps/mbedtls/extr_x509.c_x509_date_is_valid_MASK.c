#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int year; int hour; int min; int sec; int mon; int day; } ;
typedef  TYPE_1__ mbedtls_x509_time ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int MBEDTLS_ERR_X509_INVALID_DATE ; 

__attribute__((used)) static int FUNC1(const mbedtls_x509_time *time)
{
    int ret = MBEDTLS_ERR_X509_INVALID_DATE;

    FUNC0( 0, 9999, time->year );
    FUNC0( 0, 23,   time->hour );
    FUNC0( 0, 59,   time->min  );
    FUNC0( 0, 59,   time->sec  );

    switch( time->mon )
    {
        case 1: case 3: case 5: case 7: case 8: case 10: case 12:
            FUNC0( 1, 31, time->day );
            break;
        case 4: case 6: case 9: case 11:
            FUNC0( 1, 30, time->day );
            break;
        case 2:
            FUNC0( 1, 28 + (time->year % 4 == 0), time->day );
            break;
        default:
            return( ret );
    }

    return( 0 );
}