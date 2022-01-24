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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int SQLITE_BLOB ; 
 int SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned char const*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zHaystack;
  const unsigned char *zNeedle;
  int nHaystack;
  int nNeedle;
  int typeHaystack, typeNeedle;
  int N = 1;
  int isText;

  FUNC0(argc);
  typeHaystack = FUNC6(argv[0]);
  typeNeedle = FUNC6(argv[1]);
  if( typeHaystack==SQLITE_NULL || typeNeedle==SQLITE_NULL ) return;
  nHaystack = FUNC4(argv[0]);
  nNeedle = FUNC4(argv[1]);
  if( nNeedle>0 ){
    if( typeHaystack==SQLITE_BLOB && typeNeedle==SQLITE_BLOB ){
      zHaystack = FUNC3(argv[0]);
      zNeedle = FUNC3(argv[1]);
      isText = 0;
    }else{
      zHaystack = FUNC5(argv[0]);
      zNeedle = FUNC5(argv[1]);
      isText = 1;
    }
    if( zNeedle==0 || (nHaystack && zHaystack==0) ) return;
    while( nNeedle<=nHaystack && FUNC1(zHaystack, zNeedle, nNeedle)!=0 ){
      N++;
      do{
        nHaystack--;
        zHaystack++;
      }while( isText && (zHaystack[0]&0xc0)==0x80 );
    }
    if( nNeedle>nHaystack ) N = 0;
  }
  FUNC2(context, N);
}