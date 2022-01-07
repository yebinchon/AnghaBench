; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_upcall.c_nfsrv_uc_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_upcall.c_nfsrv_uc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"nfsrv_uc_start\0A\00", align 1
@nfsrv_uc_shutdown_lock = common dso_local global i32 0, align 4
@nfsrv_uc_shutdown = common dso_local global i64 0, align 8
@nfsrv_uc_thread_count = common dso_local global i64 0, align 8
@PSOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"nfsd_upcall_shutdown_wait\00", align 1
@NFS_UC_HASH_SZ = common dso_local global i64 0, align 8
@nfsrv_uc_thread = common dso_local global i32 0, align 4
@nfsrv_uc_queue_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"nfsd: Could not start nfsrv_uc_thread: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"nfsd: Could not start nfsd proxy up-call service. Falling back\0A\00", align 1
@nfsrv_uc_queue_count = common dso_local global i64 0, align 8
@nfsrv_uc_queue_max_seen = common dso_local global i64 0, align 8
@nfsrv_uc_use_proxy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nfsrv_uc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_uc_start() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @DPRINT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @nfsrv_uc_shutdown_lock, align 4
  %5 = call i32 @lck_mtx_lock(i32 %4)
  br label %6

6:                                                ; preds = %14, %0
  %7 = load i64, i64* @nfsrv_uc_shutdown, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* @nfsrv_uc_thread_count, align 8
  %11 = icmp ugt i64 %10, 0
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ true, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = load i32, i32* @nfsrv_uc_shutdown_lock, align 4
  %16 = load i32, i32* @PSOCK, align 4
  %17 = call i32 @msleep(i64* @nfsrv_uc_thread_count, i32 %15, i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %6

18:                                               ; preds = %12
  store i64 0, i64* %1, align 8
  br label %19

19:                                               ; preds = %41, %18
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @NFS_UC_HASH_SZ, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load i32, i32* @nfsrv_uc_thread, align 4
  %25 = load i64, i64* %1, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsrv_uc_queue_tbl, align 8
  %28 = load i64, i64* @nfsrv_uc_thread_count, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @kernel_thread_start(i32 %24, i8* %26, i32* %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load i64, i64* @nfsrv_uc_thread_count, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @nfsrv_uc_thread_count, align 8
  br label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %1, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %1, align 8
  br label %19

44:                                               ; preds = %19
  %45 = load i64, i64* @nfsrv_uc_thread_count, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %50

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32, i32* @nfsrv_uc_shutdown_lock, align 4
  %52 = call i32 @lck_mtx_unlock(i32 %51)
  ret void
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @msleep(i64*, i32, i32, i8*, i32*) #1

declare dso_local i32 @kernel_thread_start(i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
