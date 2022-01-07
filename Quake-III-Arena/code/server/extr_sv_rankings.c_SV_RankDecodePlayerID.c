
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int qint64 ;


 int Com_DPrintf (char*,int) ;
 int LittleLong64 (int ) ;
 int SV_RankAsciiDecode (unsigned char*,char const*,int) ;
 int assert (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static uint64_t SV_RankDecodePlayerID( const char* string )
{
 unsigned char buffer[9];
 int len;
 qint64 player_id;

 assert( string != ((void*)0) );

 len = strlen (string) ;
 Com_DPrintf( "SV_RankDecodePlayerID: string length %d\n",len );
 SV_RankAsciiDecode( buffer, string, len );
 player_id = LittleLong64(*(qint64*)buffer);
 return *(uint64_t*)&player_id;
}
