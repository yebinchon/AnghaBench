
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* j_decompress_ptr ;
typedef int boolean ;
struct TYPE_6__ {scalar_t__ global_state; TYPE_1__* inputctl; } ;
struct TYPE_5__ {int eoi_reached; } ;


 scalar_t__ DSTATE_START ;
 scalar_t__ DSTATE_STOPPING ;
 int ERREXIT1 (TYPE_2__*,int ,scalar_t__) ;
 int JERR_BAD_STATE ;

boolean
jpeg_input_complete (j_decompress_ptr cinfo)
{

  if (cinfo->global_state < DSTATE_START ||
      cinfo->global_state > DSTATE_STOPPING)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);
  return cinfo->inputctl->eoi_reached;
}
