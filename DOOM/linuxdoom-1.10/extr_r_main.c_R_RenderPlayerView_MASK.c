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
typedef  int /*<<< orphan*/  player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ numnodes ; 

void FUNC9 (player_t* player)
{	
    FUNC8 (player);

    // Clear buffers.
    FUNC1 ();
    FUNC2 ();
    FUNC3 ();
    FUNC4 ();
    
    // check for new console commands.
    FUNC0 ();

    // The head node is the last node output.
    FUNC7 (numnodes-1);
    
    // Check for new console commands.
    FUNC0 ();
    
    FUNC6 ();
    
    // Check for new console commands.
    FUNC0 ();
    
    FUNC5 ();

    // Check for new console commands.
    FUNC0 ();				
}