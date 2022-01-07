
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int open (char const*,int,int ) ;

int creat( const char *pathname, mode_t mode ) {
    return open( pathname, O_CREAT | O_WRONLY | O_TRUNC, mode );
}
