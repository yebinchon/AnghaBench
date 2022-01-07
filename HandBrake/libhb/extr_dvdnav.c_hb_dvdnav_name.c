
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unused ;
typedef int name ;
typedef int dvd_reader_t ;


 int DVDClose (int *) ;
 int * DVDOpen (char*) ;
 scalar_t__ DVDUDFVolumeInfo (int *,char*,int,unsigned char*,int) ;

__attribute__((used)) static char * hb_dvdnav_name( char * path )
{
    static char name[1024];
    unsigned char unused[1024];
    dvd_reader_t * reader;

    reader = DVDOpen( path );
    if( !reader )
    {
        return ((void*)0);
    }

    if( DVDUDFVolumeInfo( reader, name, sizeof( name ),
                          unused, sizeof( unused ) ) )
    {
        DVDClose( reader );
        return ((void*)0);
    }

    DVDClose( reader );
    return name;
}
