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

__attribute__((used)) static unsigned FUNC6(ucvector* out, const char* keyword, const char* textstring,
                              LodePNGCompressSettings* zlibsettings)
{
  unsigned error = 0;
  ucvector data, compressed;
  size_t i, textsize = FUNC1(textstring);

  FUNC3(&data);
  FUNC3(&compressed);
  for(i = 0; keyword[i] != 0; i++) FUNC4(&data, (unsigned char)keyword[i]);
  if(i < 1 || i > 79) return 89; /*error: invalid keyword size*/
  FUNC4(&data, 0); /*0 termination char*/
  FUNC4(&data, 0); /*compression method: 0*/

  error = FUNC5(&compressed.data, &compressed.size,
                        (unsigned char*)textstring, textsize, zlibsettings);
  if(!error)
  {
    for(i = 0; i < compressed.size; i++) FUNC4(&data, compressed.data[i]);
    error = FUNC0(out, "zTXt", data.data, data.size);
  }

  FUNC2(&compressed);
  FUNC2(&data);
  return error;
}