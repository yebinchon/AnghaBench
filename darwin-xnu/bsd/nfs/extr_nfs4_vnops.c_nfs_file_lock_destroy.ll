; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_file_lock_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_file_lock_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_file_lock = type { i32, %struct.nfs_lock_owner* }
%struct.nfs_lock_owner = type { i32 }

@NFS_FILE_LOCK_ALLOC = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_file_lock_destroy(%struct.nfs_file_lock* %0) #0 {
  %2 = alloca %struct.nfs_file_lock*, align 8
  %3 = alloca %struct.nfs_lock_owner*, align 8
  store %struct.nfs_file_lock* %0, %struct.nfs_file_lock** %2, align 8
  %4 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %4, i32 0, i32 1
  %6 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %5, align 8
  store %struct.nfs_lock_owner* %6, %struct.nfs_lock_owner** %3, align 8
  %7 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @NFS_FILE_LOCK_ALLOC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %2, align 8
  %15 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %14, i32 0, i32 1
  store %struct.nfs_lock_owner* null, %struct.nfs_lock_owner** %15, align 8
  %16 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %2, align 8
  %17 = load i32, i32* @M_TEMP, align 4
  %18 = call i32 @FREE(%struct.nfs_file_lock* %16, i32 %17)
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %3, align 8
  %21 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %20, i32 0, i32 0
  %22 = call i32 @lck_mtx_lock(i32* %21)
  %23 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %2, align 8
  %24 = call i32 @bzero(%struct.nfs_file_lock* %23, i32 16)
  %25 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %25, i32 0, i32 0
  %27 = call i32 @lck_mtx_unlock(i32* %26)
  br label %28

28:                                               ; preds = %19, %13
  %29 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %3, align 8
  %30 = call i32 @nfs_lock_owner_rele(%struct.nfs_lock_owner* %29)
  ret void
}

declare dso_local i32 @FREE(%struct.nfs_file_lock*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @bzero(%struct.nfs_file_lock*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @nfs_lock_owner_rele(%struct.nfs_lock_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
