#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* u8 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  sqlite3_free ; 
 unsigned char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  unsigned char *z, *zOut;
  int i;
  zOut = z = FUNC0( argc*4+1 );
  if( z==0 ){
    FUNC1(context);
    return;
  }
  for(i=0; i<argc; i++){
    sqlite3_int64 x;
    unsigned c;
    x = FUNC3(argv[i]);
    if( x<0 || x>0x10ffff ) x = 0xfffd;
    c = (unsigned)(x & 0x1fffff);
    if( c<0x00080 ){
      *zOut++ = (u8)(c&0xFF);
    }else if( c<0x00800 ){
      *zOut++ = 0xC0 + (u8)((c>>6)&0x1F);
      *zOut++ = 0x80 + (u8)(c & 0x3F);
    }else if( c<0x10000 ){
      *zOut++ = 0xE0 + (u8)((c>>12)&0x0F);
      *zOut++ = 0x80 + (u8)((c>>6) & 0x3F);
      *zOut++ = 0x80 + (u8)(c & 0x3F);
    }else{
      *zOut++ = 0xF0 + (u8)((c>>18) & 0x07);
      *zOut++ = 0x80 + (u8)((c>>12) & 0x3F);
      *zOut++ = 0x80 + (u8)((c>>6) & 0x3F);
      *zOut++ = 0x80 + (u8)(c & 0x3F);
    }                                                    \
  }
  FUNC2(context, (char*)z, zOut-z, sqlite3_free, SQLITE_UTF8);
}