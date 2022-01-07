
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;
typedef int png_structp ;


 scalar_t__ png_get_io_ptr (int ) ;

__attribute__((used)) static struct buffer *
get_buffer(png_structp pp)

{
   return (struct buffer*)png_get_io_ptr(pp);
}
