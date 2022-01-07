
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int file_handle; } ;
typedef TYPE_1__ hb_stream_t ;


 int EOF ;
 int SEEK_CUR ;
 int flockfile (int ) ;
 int fseeko (int ,int,int ) ;
 int funlockfile (int ) ;
 int getc_unlocked (int ) ;

__attribute__((used)) static void skip_to_next_pack( hb_stream_t *src_stream )
{

    uint32_t strt_code = -1;
    int c;

    flockfile( src_stream->file_handle );
    while ( ( c = getc_unlocked( src_stream->file_handle ) ) != EOF )
    {
        strt_code = ( strt_code << 8 ) | c;
        if ( strt_code == 0x000001ba )

            break;
    }
    funlockfile( src_stream->file_handle );



    if ( c != EOF )
    {
        fseeko( src_stream->file_handle, -4, SEEK_CUR );
    }
}
