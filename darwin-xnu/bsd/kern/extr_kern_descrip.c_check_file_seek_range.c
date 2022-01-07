
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {scalar_t__ l_whence; scalar_t__ l_start; scalar_t__ l_len; } ;
typedef scalar_t__ off_t ;


 scalar_t__ CHECK_ADD_OVERFLOW_INT64L (scalar_t__,scalar_t__) ;
 int EINVAL ;
 int EOVERFLOW ;
 scalar_t__ SEEK_CUR ;
 scalar_t__ SEEK_SET ;

__attribute__((used)) static int
check_file_seek_range(struct flock *fl, off_t cur_file_offset)
{
 if (fl->l_whence == SEEK_CUR) {

  if (CHECK_ADD_OVERFLOW_INT64L(fl->l_start, cur_file_offset)) {

   if (fl->l_start < 0) {
    return EINVAL;
   }
   return EOVERFLOW;
  }

  if (fl->l_start + cur_file_offset < 0) {
   return EINVAL;
  }

  if ((fl->l_len > 0) && (CHECK_ADD_OVERFLOW_INT64L(fl->l_start +
   cur_file_offset, fl->l_len - 1))) {
   return EOVERFLOW;
  }

  if ((fl->l_len <= 0) && (fl->l_start + cur_file_offset +
   fl->l_len < 0)) {
   return EINVAL;
  }
 } else if (fl->l_whence == SEEK_SET) {

  if (fl->l_start < 0) {
   return EINVAL;
  }

  if ((fl->l_len > 0) &&
      CHECK_ADD_OVERFLOW_INT64L(fl->l_start, fl->l_len - 1)) {
   return EOVERFLOW;
  }

  if ((fl->l_len < 0) && fl->l_start + fl->l_len < 0) {
   return EINVAL;
  }
 }
 return 0;
}
