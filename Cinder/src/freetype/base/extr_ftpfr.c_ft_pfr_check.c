
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * FT_Service_PfrMetrics ;
typedef scalar_t__ FT_Face ;


 int FT_FACE_LOOKUP_SERVICE (scalar_t__,int *,int ) ;
 int PFR_METRICS ;

__attribute__((used)) static FT_Service_PfrMetrics
  ft_pfr_check( FT_Face face )
  {
    FT_Service_PfrMetrics service = ((void*)0);


    if ( face )
      FT_FACE_LOOKUP_SERVICE( face, service, PFR_METRICS );

    return service;
  }
