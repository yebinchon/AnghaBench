#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  const u_long ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  const u_char ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  KXLDObject ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  export_macho_header_32 ; 
 int /*<<< orphan*/  export_macho_header_64 ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC4(const KXLDObject *object, u_char *buf, u_int ncmds,
    u_long *header_offset, u_long header_size)
{
    kern_return_t rval = KERN_FAILURE;

    FUNC1(object);
    FUNC1(buf);
    FUNC1(header_offset);

    FUNC0(FUNC2(object), rval, 
        export_macho_header_32, export_macho_header_64, 
        object, buf, ncmds, header_offset, header_size);
    FUNC3(rval, finish);

    rval = KERN_SUCCESS;

finish:
   return rval;
}