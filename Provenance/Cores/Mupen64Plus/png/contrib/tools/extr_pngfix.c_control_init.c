
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct global {int dummy; } ;
struct control {int file; } ;


 int allocate ;
 int file_init (int *,struct global*,char const*,char const*,struct control*,int ) ;

__attribute__((used)) static int
control_init(struct control *control, struct global *global,
   const char *file_name, const char *out_name)



{
   return file_init(&control->file, global, file_name, out_name, control,
      allocate);
}
