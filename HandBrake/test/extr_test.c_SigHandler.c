
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_ERROR_CANCELED ;
 int die ;
 int done_error ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ hb_get_date () ;
 scalar_t__ i_die_date ;
 int stderr ;

void SigHandler( int i_signal )
{
    done_error = HB_ERROR_CANCELED;
    if( die == 0 )
    {
        die = 1;
        i_die_date = hb_get_date();
        fprintf( stderr, "Signal %d received, terminating - do it "
                 "again in case it gets stuck\n", i_signal );
    }
    else if( i_die_date + 500 < hb_get_date() )
    {
        fprintf( stderr, "Dying badly, files might remain in your /tmp\n" );
        exit( done_error );
    }
}
