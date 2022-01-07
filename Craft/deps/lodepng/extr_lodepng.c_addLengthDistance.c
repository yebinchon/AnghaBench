
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uivector ;


 scalar_t__* DISTANCEBASE ;
 unsigned int FIRST_LENGTH_CODE_INDEX ;
 scalar_t__* LENGTHBASE ;
 int searchCodeIndex (scalar_t__*,int,size_t) ;
 int uivector_push_back (int *,unsigned int) ;

__attribute__((used)) static void addLengthDistance(uivector* values, size_t length, size_t distance)
{






  unsigned length_code = (unsigned)searchCodeIndex(LENGTHBASE, 29, length);
  unsigned extra_length = (unsigned)(length - LENGTHBASE[length_code]);
  unsigned dist_code = (unsigned)searchCodeIndex(DISTANCEBASE, 30, distance);
  unsigned extra_distance = (unsigned)(distance - DISTANCEBASE[dist_code]);

  uivector_push_back(values, length_code + FIRST_LENGTH_CODE_INDEX);
  uivector_push_back(values, extra_length);
  uivector_push_back(values, dist_code);
  uivector_push_back(values, extra_distance);
}
