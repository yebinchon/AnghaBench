; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_upcall.c_nfsrv_uc_cleanup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_upcall.c_nfsrv_uc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_uc_queue = type { i32, i32 }
%struct.nfsrv_uc_arg = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Entering nfsrv_uc_cleanup\0A\00", align 1
@NFS_UC_HASH_SZ = common dso_local global i32 0, align 4
@nfsrv_uc_queue_tbl = common dso_local global %struct.nfsrv_uc_queue* null, align 8
@nua_svcq = common dso_local global i32 0, align 4
@NFS_UC_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsrv_uc_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.nfsrv_uc_queue*, align 8
  %3 = alloca %struct.nfsrv_uc_arg*, align 8
  %4 = call i32 @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %47, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @NFS_UC_HASH_SZ, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** @nfsrv_uc_queue_tbl, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %10, i64 %12
  store %struct.nfsrv_uc_queue* %13, %struct.nfsrv_uc_queue** %2, align 8
  %14 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %2, align 8
  %15 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @lck_mtx_lock(i32 %16)
  br label %18

18:                                               ; preds = %25, %9
  %19 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %2, align 8
  %20 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @TAILQ_EMPTY(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %2, align 8
  %27 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.nfsrv_uc_arg* @TAILQ_FIRST(i32 %28)
  store %struct.nfsrv_uc_arg* %29, %struct.nfsrv_uc_arg** %3, align 8
  %30 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %2, align 8
  %31 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %3, align 8
  %34 = load i32, i32* @nua_svcq, align 4
  %35 = call i32 @TAILQ_REMOVE(i32 %32, %struct.nfsrv_uc_arg* %33, i32 %34)
  %36 = load i32, i32* @NFS_UC_QUEUED, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %3, align 8
  %39 = getelementptr inbounds %struct.nfsrv_uc_arg, %struct.nfsrv_uc_arg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %2, align 8
  %44 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lck_mtx_unlock(i32 %45)
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %5

50:                                               ; preds = %5
  %51 = call i32 (...) @nfsrv_uc_stop()
  ret void
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32) #1

declare dso_local %struct.nfsrv_uc_arg* @TAILQ_FIRST(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32, %struct.nfsrv_uc_arg*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @nfsrv_uc_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
