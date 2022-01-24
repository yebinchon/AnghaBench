#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfsbuflists {int dummy; } ;
struct nfsbuf {int dummy; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_5__ {int /*<<< orphan*/  n_dirtyblkhd; int /*<<< orphan*/  n_cleanblkhd; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct nfsbuf* FUNC0 (struct nfsbuflists*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBI_CLEAN ; 
 int /*<<< orphan*/  NBI_DIRTY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nb_vnbufs ; 
 int FUNC5 (struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfsbuf*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct nfsbuflists*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct nfsbuflists*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct nfsbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsbuf*) ; 

void
FUNC11(nfsnode_t np)
{
	struct nfsbuf *bp;
	struct nfsbuflists blist;
	int error = 0;

	FUNC3(nfs_buf_mutex);
	if (!FUNC8(np, &blist, NBI_CLEAN)) {
		while ((bp = FUNC0(&blist))) {
			FUNC2(bp, nb_vnbufs);
			FUNC1(&np->n_cleanblkhd, bp, nb_vnbufs);
			FUNC9(bp);
			while ((error = FUNC5(bp, 0, 0, 0))) {
				if (error != EAGAIN) {
					FUNC10(bp);
					FUNC7(np, &blist, NBI_CLEAN);
					FUNC4(nfs_buf_mutex);
					return;
				}
			}
			FUNC10(bp);
			FUNC6(bp);
		}
		FUNC7(np, &blist, NBI_CLEAN);
	}
	if (!FUNC8(np, &blist, NBI_DIRTY)) {
		while ((bp = FUNC0(&blist))) {
			FUNC2(bp, nb_vnbufs);
			FUNC1(&np->n_dirtyblkhd, bp, nb_vnbufs);
			FUNC9(bp);
			while ((error = FUNC5(bp, 0, 0, 0))) {
				if (error != EAGAIN) {
					FUNC10(bp);
					FUNC7(np, &blist, NBI_DIRTY);
					FUNC4(nfs_buf_mutex);
					return;
				}
			}
			FUNC10(bp);
			FUNC6(bp);
		}
		FUNC7(np, &blist, NBI_DIRTY);
	}
	FUNC4(nfs_buf_mutex);
}