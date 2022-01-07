
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SEEK_CUR ;
 scalar_t__ ftruncate (int,int ) ;
 int lseek (int,int ,int ) ;

int vc_hostfs_setend(int filedes)
{
    off_t currPosn;

    if (( currPosn = lseek( filedes, 0, SEEK_CUR )) != (off_t)-1 )
    {
        if ( ftruncate( filedes, currPosn ) == 0 )
        {
            return 0;
        }
    }
   return -1;
}
