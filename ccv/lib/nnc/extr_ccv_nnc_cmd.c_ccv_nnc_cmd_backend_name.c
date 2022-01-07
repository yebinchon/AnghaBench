
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {char const* name; } ;


 int const CCV_NNC_BACKEND_COUNT ;
 scalar_t__ const CCV_NNC_NO_BACKEND ;
 int _ccv_nnc_cmd_backend_ph (scalar_t__ const) ;
 int assert (int) ;
 TYPE_1__* backend_init_map ;

const char* ccv_nnc_cmd_backend_name(const uint32_t backend)
{
 if (backend == CCV_NNC_NO_BACKEND)
  return "CCV_NNC_NO_BACKEND";
 const int idx = _ccv_nnc_cmd_backend_ph(backend);
 assert(idx >= 0);
 assert(idx < CCV_NNC_BACKEND_COUNT);
 return backend_init_map[idx].name;
}
