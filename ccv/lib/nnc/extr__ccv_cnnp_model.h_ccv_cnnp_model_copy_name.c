
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ ccv_cnnp_model_t ;


 scalar_t__ ccmalloc (size_t const) ;
 int memcpy (char*,char const* const,size_t const) ;
 size_t strnlen (char const* const,int) ;

__attribute__((used)) static inline void ccv_cnnp_model_copy_name(ccv_cnnp_model_t* const self, const char* const name)
{
 if (name)
 {
  const size_t len = strnlen(name, 63);
  const size_t n = len + 1;
  self->name = (char*)ccmalloc(n);

  memcpy(self->name, name, n);
  self->name[len] = 0;
 }
}
