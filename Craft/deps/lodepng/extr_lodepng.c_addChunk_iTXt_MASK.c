#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned char* data; size_t size; } ;
typedef  TYPE_1__ ucvector ;
typedef  int /*<<< orphan*/  LodePNGCompressSettings ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*,char*,unsigned char*,size_t) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned char) ; 
 unsigned int FUNC5 (unsigned char**,size_t*,unsigned char*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned FUNC6(ucvector* out, unsigned compressed, const char* keyword, const char* langtag,
                              const char* transkey, const char* textstring, LodePNGCompressSettings* zlibsettings)
{
  unsigned error = 0;
  ucvector data;
  size_t i, textsize = FUNC1(textstring);

  FUNC3(&data);

  for(i = 0; keyword[i] != 0; i++) FUNC4(&data, (unsigned char)keyword[i]);
  if(i < 1 || i > 79) return 89; /*error: invalid keyword size*/
  FUNC4(&data, 0); /*null termination char*/
  FUNC4(&data, compressed ? 1 : 0); /*compression flag*/
  FUNC4(&data, 0); /*compression method*/
  for(i = 0; langtag[i] != 0; i++) FUNC4(&data, (unsigned char)langtag[i]);
  FUNC4(&data, 0); /*null termination char*/
  for(i = 0; transkey[i] != 0; i++) FUNC4(&data, (unsigned char)transkey[i]);
  FUNC4(&data, 0); /*null termination char*/

  if(compressed)
  {
    ucvector compressed_data;
    FUNC3(&compressed_data);
    error = FUNC5(&compressed_data.data, &compressed_data.size,
                          (unsigned char*)textstring, textsize, zlibsettings);
    if(!error)
    {
      for(i = 0; i < compressed_data.size; i++) FUNC4(&data, compressed_data.data[i]);
    }
    FUNC2(&compressed_data);
  }
  else /*not compressed*/
  {
    for(i = 0; textstring[i] != 0; i++) FUNC4(&data, (unsigned char)textstring[i]);
  }

  if(!error) error = FUNC0(out, "iTXt", data.data, data.size);
  FUNC2(&data);
  return error;
}