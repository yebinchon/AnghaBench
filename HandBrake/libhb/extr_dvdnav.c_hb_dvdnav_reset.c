
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dvdnav; int path; } ;
typedef TYPE_1__ hb_dvdnav_t ;


 scalar_t__ DVDNAV_STATUS_OK ;
 int DVD_READ_CACHE ;
 int dvdnav_close (scalar_t__) ;
 int dvdnav_err_to_string (scalar_t__) ;
 scalar_t__ dvdnav_open (scalar_t__*,char*) ;
 scalar_t__ dvdnav_set_PGC_positioning_flag (scalar_t__,int) ;
 scalar_t__ dvdnav_set_readahead_flag (scalar_t__,int ) ;
 int free (char*) ;
 int hb_error (char*,int ) ;
 int hb_log (char*) ;
 char* hb_utf8_to_cp (int ) ;

__attribute__((used)) static int hb_dvdnav_reset( hb_dvdnav_t * d )
{
    char * path_ccp = hb_utf8_to_cp( d->path );
    if ( d->dvdnav )
        dvdnav_close( d->dvdnav );


    if( dvdnav_open(&d->dvdnav, path_ccp) != DVDNAV_STATUS_OK )
    {



        hb_log( "dvd: not a dvd - trying as a stream/file instead" );
        goto fail;
    }

    if (dvdnav_set_readahead_flag(d->dvdnav, DVD_READ_CACHE) !=
        DVDNAV_STATUS_OK)
    {
        hb_error("Error: dvdnav_set_readahead_flag: %s\n",
                 dvdnav_err_to_string(d->dvdnav));
        goto fail;
    }






    if (dvdnav_set_PGC_positioning_flag(d->dvdnav, 1) != DVDNAV_STATUS_OK)
    {
        hb_error("Error: dvdnav_set_PGC_positioning_flag: %s\n",
                 dvdnav_err_to_string(d->dvdnav));
        goto fail;
    }

    free( path_ccp );

    return 1;

fail:
    if( d->dvdnav ) dvdnav_close( d->dvdnav );
    free( path_ccp );
    return 0;
}
