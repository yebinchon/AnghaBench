; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_async_write_done.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_async_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i64, i32 }

@nfs_max_async_writes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_async_write_done(%struct.nfsmount* %0) #0 {
  %2 = alloca %struct.nfsmount*, align 8
  store %struct.nfsmount* %0, %struct.nfsmount** %2, align 8
  %3 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %4 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sle i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %10 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %9, i32 0, i32 1
  %11 = call i32 @lck_mtx_lock(i32* %10)
  %12 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %13 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* @nfs_max_async_writes, align 8
  %17 = icmp sge i64 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %20 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %19, i32 0, i32 0
  %21 = call i32 @wakeup(i64* %20)
  br label %22

22:                                               ; preds = %18, %8
  %23 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %24 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %23, i32 0, i32 1
  %25 = call i32 @lck_mtx_unlock(i32* %24)
  br label %26

26:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
