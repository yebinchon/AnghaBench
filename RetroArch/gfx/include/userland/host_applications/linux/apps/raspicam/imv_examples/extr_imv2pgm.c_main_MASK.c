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
struct TYPE_3__ {int x_vector; int y_vector; } ;
typedef  TYPE_1__ INLINE_MOTION_VECTOR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

int FUNC13(int argc, const char **argv)
{
   if(argc!=5)
   {
      FUNC11("usage: %s data.imv mbx mby out.pgm\n",argv[0]);
      return 0;
   }
   int mbx=FUNC0(argv[2]);
   int mby=FUNC0(argv[3]);

   ///////////////////////////////
   //  Read raw file to buffer  //
   ///////////////////////////////
   FILE *f = FUNC3(argv[1], "rb");
   FUNC7(f, 0, SEEK_END);
   long fsize = FUNC8(f);
   FUNC7(f, 0, SEEK_SET);
   char *buffer = FUNC9(fsize + 1);
   FUNC6(buffer, fsize, 1, f);
   FUNC1(f);
   buffer[fsize] = 0;

   ///////////////////
   //  Fill struct  //
   ///////////////////
   if(fsize<(mbx+1)*mby*4)
   {
      FUNC11("File to short!\n");
      return 0;
   }
   INLINE_MOTION_VECTOR *imv;
   imv = FUNC9((mbx+1)*mby*sizeof(INLINE_MOTION_VECTOR));
   FUNC10 ( &imv[0], &buffer[0], (mbx+1)*mby*sizeof(INLINE_MOTION_VECTOR) );

   /////////////////////
   //  Export to PGM  //
   /////////////////////
   FILE *out = FUNC3(argv[4], "w");
   FUNC4(out,"P5\n%d %d\n255\n",mbx,mby);
   int i,j;
   for(j=0;j<mby; j++)
      for(i=0;i<mbx; i++)
   {
         unsigned char magU=FUNC2(FUNC12(imv[i+(mbx+1)*j].x_vector*imv[i+(mbx+1)*j].x_vector+imv[i+(mbx+1)*j].y_vector*imv[i+(mbx+1)*j].y_vector));
         FUNC5(magU,out);
   }
   FUNC1(out);
 return 0;

}