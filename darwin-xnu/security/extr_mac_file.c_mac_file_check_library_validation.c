
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_long_t ;
struct proc {int dummy; } ;
struct fileglob {int dummy; } ;
typedef int off_t ;


 int MAC_CHECK (int ,struct proc*,struct fileglob*,int ,int ,size_t) ;
 int file_check_library_validation ;

int
mac_file_check_library_validation(struct proc *proc,
 struct fileglob *fg, off_t slice_offset,
 user_long_t error_message, size_t error_message_size)
{
 int error;

 MAC_CHECK(file_check_library_validation, proc, fg, slice_offset, error_message, error_message_size);
 return (error);
}
