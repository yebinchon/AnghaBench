
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef unsigned char* GR_PLAYER_TOKEN ;


 int Com_DPrintf (char*,int) ;
 int SV_RankAsciiDecode (unsigned char*,char const*,int) ;
 int assert (int ) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int memset (unsigned char*,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void SV_RankDecodePlayerKey( const char* string, GR_PLAYER_TOKEN key )
{
 unsigned char buffer[1400];
 int len;
 assert( string != ((void*)0) );

 len = strlen (string) ;
 Com_DPrintf( "SV_RankDecodePlayerKey: string length %d\n",len );

 memset(key,0,sizeof(GR_PLAYER_TOKEN));
 memset(buffer,0,sizeof(buffer));
 memcpy( key, buffer, SV_RankAsciiDecode( buffer, string, len ) );
}
