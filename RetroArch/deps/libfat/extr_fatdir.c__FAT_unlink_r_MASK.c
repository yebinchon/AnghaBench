#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct _reent {void* _errno; } ;
struct TYPE_18__ {int /*<<< orphan*/  entryData; } ;
struct TYPE_17__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cache; scalar_t__ readOnly; } ;
typedef  TYPE_1__ PARTITION ;
typedef  TYPE_2__ DIR_ENTRY ;

/* Variables and functions */
 void* EINVAL ; 
 void* EIO ; 
 void* ENODEV ; 
 void* ENOENT ; 
 void* ENOTEMPTY ; 
 void* EROFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (char const*,char) ; 

int FUNC14 (struct _reent *r, const char *path)
{
   PARTITION* partition = NULL;
   DIR_ENTRY dirEntry;
   DIR_ENTRY dirContents;
   uint32_t cluster;
   bool nextEntry;
   bool errorOccured = false;

   /* Get the partition this directory is on */
   partition = FUNC11 (path);
   if (partition == NULL)
   {
      r->_errno = ENODEV;
      return -1;
   }

   /* Make sure we aren't trying to write to a read-only disc */
   if (partition->readOnly)
   {
      r->_errno = EROFS;
      return -1;
   }

   /* Move the path pointer to the start of the actual path */
   if (FUNC13 (path, ':') != NULL)
      path = FUNC13 (path, ':') + 1;
   if (FUNC13 (path, ':') != NULL)
   {
      r->_errno = EINVAL;
      return -1;
   }

   FUNC10(&partition->lock);

   /* Search for the file on the disc */
   if (!FUNC1 (partition, &dirEntry, path, NULL))
   {
      FUNC12(&partition->lock);
      r->_errno = ENOENT;
      return -1;
   }

   cluster = FUNC2 (partition, dirEntry.entryData);

   /* If this is a directory, make sure it is empty */
   if (FUNC5 (&dirEntry))
   {
      nextEntry = FUNC3 (partition, &dirContents, cluster);

      while (nextEntry)
      {
         if (!FUNC6 (&dirContents))
         {
            /* The directory had something in it that isn't a reference to itself or it's parent */
            FUNC12(&partition->lock);
            r->_errno = ENOTEMPTY;
            return -1;
         }
         nextEntry = FUNC4 (partition, &dirContents);
      }
   }

   if (FUNC9(partition, cluster))
   {
      /* Remove the cluster chain for this file */
      if (!FUNC8 (partition, cluster))
      {
         r->_errno = EIO;
         errorOccured = true;
      }
   }

   /* Remove the directory entry for this file */
   if (!FUNC7 (partition, &dirEntry))
   {
      r->_errno = EIO;
      errorOccured = true;
   }

   /* Flush any sectors in the disc cache */
   if (!FUNC0(partition->cache))
   {
      r->_errno = EIO;
      errorOccured = true;
   }

   FUNC12(&partition->lock);
   if (errorOccured)
      return -1;
   return 0;
}