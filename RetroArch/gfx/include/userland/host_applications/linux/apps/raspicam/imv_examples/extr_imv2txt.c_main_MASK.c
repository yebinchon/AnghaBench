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
struct TYPE_3__ {int x_vector; int y_vector; int sad; } ;
typedef  TYPE_1__ INLINE_MOTION_VECTOR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

int FUNC10(int argc, const char **argv)
{
   if(argc!=5)
   {
      FUNC9("usage: %s data.imv mbx mby out.dat\n",argv[0]);
      return 0;
   }
   int mbx=FUNC0(argv[2]);
   int mby=FUNC0(argv[3]);

   ///////////////////////////////
   //  Read raw file to buffer  //
   ///////////////////////////////
   FILE *f = FUNC2(argv[1], "rb");
   FUNC5(f, 0, SEEK_END);
   long fsize = FUNC6(f);
   FUNC5(f, 0, SEEK_SET);
   char *buffer = FUNC7(fsize + 1);
   FUNC4(buffer, fsize, 1, f);
   FUNC1(f);
   buffer[fsize] = 0;

   ///////////////////
   //  Fill struct  //
   ///////////////////
   if(fsize<(mbx+1)*mby*4)
   {
      FUNC9("File to short!\n");
      return 0;
   }
   INLINE_MOTION_VECTOR *imv;
   imv = FUNC7((mbx+1)*mby*sizeof(INLINE_MOTION_VECTOR));
   FUNC8 ( &imv[0], &buffer[0], (mbx+1)*mby*sizeof(INLINE_MOTION_VECTOR) );

   //////////////////////////
   //  Export to txt data  //
   //////////////////////////
   FILE *out = FUNC2(argv[4], "w");
   FUNC3(out,"#x y u v sad\n");
   int i,j;
   for(j=0;j<mby; j++)
      for(i=0;i<mbx; i++)
   {
      FUNC3(out,"%g %g %d %d %d\n",(i+0.5)*16.,(mby-j-0.5)*16.,-imv[i+(mbx+1)*j].x_vector,imv[i+(mbx+1)*j].y_vector,imv[i+(mbx+1)*j].sad);
   }
   FUNC1(out);
 return 0;

}