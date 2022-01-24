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
typedef  int /*<<< orphan*/  fileHandle_t ;
struct TYPE_2__ {int numglobalservers; int nummplayerservers; int numfavoriteservers; int globalServers; int mplayerServers; int favoriteServers; scalar_t__ numGlobalServerAddresses; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 TYPE_1__ cls ; 

void FUNC3( ) {
	int size;
	fileHandle_t fileIn;
	cls.numglobalservers = cls.nummplayerservers = cls.numfavoriteservers = 0;
	cls.numGlobalServerAddresses = 0;
	if (FUNC2("servercache.dat", &fileIn)) {
		FUNC1(&cls.numglobalservers, sizeof(int), fileIn);
		FUNC1(&cls.nummplayerservers, sizeof(int), fileIn);
		FUNC1(&cls.numfavoriteservers, sizeof(int), fileIn);
		FUNC1(&size, sizeof(int), fileIn);
		if (size == sizeof(cls.globalServers) + sizeof(cls.favoriteServers) + sizeof(cls.mplayerServers)) {
			FUNC1(&cls.globalServers, sizeof(cls.globalServers), fileIn);
			FUNC1(&cls.mplayerServers, sizeof(cls.mplayerServers), fileIn);
			FUNC1(&cls.favoriteServers, sizeof(cls.favoriteServers), fileIn);
		} else {
			cls.numglobalservers = cls.nummplayerservers = cls.numfavoriteservers = 0;
			cls.numGlobalServerAddresses = 0;
		}
		FUNC0(fileIn);
	}
}