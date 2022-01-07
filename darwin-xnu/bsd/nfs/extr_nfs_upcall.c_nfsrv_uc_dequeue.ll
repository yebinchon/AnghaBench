; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_upcall.c_nfsrv_uc_dequeue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_upcall.c_nfsrv_uc_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_uc_queue = type { i32, i32 }
%struct.nfsrv_sock = type { %struct.nfsrv_uc_arg* }
%struct.nfsrv_uc_arg = type { i64, i32 }

@nfsrv_uc_queue_tbl = common dso_local global %struct.nfsrv_uc_queue* null, align 8
@NFS_UC_QUEUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"nfsrv_uc_dequeue remove %p\0A\00", align 1
@nua_svcq = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@nfsrv_uc_queue_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsrv_uc_dequeue(%struct.nfsrv_sock* %0) #0 {
  %2 = alloca %struct.nfsrv_sock*, align 8
  %3 = alloca %struct.nfsrv_uc_arg*, align 8
  %4 = alloca %struct.nfsrv_uc_queue*, align 8
  store %struct.nfsrv_sock* %0, %struct.nfsrv_sock** %2, align 8
  %5 = load %struct.nfsrv_sock*, %struct.nfsrv_sock** %2, align 8
  %6 = getelementptr inbounds %struct.nfsrv_sock, %struct.nfsrv_sock* %5, i32 0, i32 0
  %7 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %6, align 8
  store %struct.nfsrv_uc_arg* %7, %struct.nfsrv_uc_arg** %3, align 8
  %8 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** @nfsrv_uc_queue_tbl, align 8
  %9 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %3, align 8
  %10 = getelementptr inbounds %struct.nfsrv_uc_arg, %struct.nfsrv_uc_arg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %8, i64 %11
  store %struct.nfsrv_uc_queue* %12, %struct.nfsrv_uc_queue** %4, align 8
  %13 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %3, align 8
  %14 = icmp eq %struct.nfsrv_uc_arg* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %3, align 8
  %17 = getelementptr inbounds %struct.nfsrv_uc_arg, %struct.nfsrv_uc_arg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NFS_UC_QUEUED, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %1
  br label %61

23:                                               ; preds = %15
  %24 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %4, align 8
  %25 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lck_mtx_lock(i32 %26)
  %28 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %3, align 8
  %29 = getelementptr inbounds %struct.nfsrv_uc_arg, %struct.nfsrv_uc_arg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NFS_UC_QUEUED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %23
  %35 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %3, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.nfsrv_uc_arg* %35)
  %37 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %4, align 8
  %38 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %3, align 8
  %41 = load i32, i32* @nua_svcq, align 4
  %42 = call i32 @TAILQ_REMOVE(i32 %39, %struct.nfsrv_uc_arg* %40, i32 %41)
  %43 = load i32, i32* @NFS_UC_QUEUED, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %3, align 8
  %46 = getelementptr inbounds %struct.nfsrv_uc_arg, %struct.nfsrv_uc_arg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %34, %23
  %50 = load %struct.nfsrv_sock*, %struct.nfsrv_sock** %2, align 8
  %51 = getelementptr inbounds %struct.nfsrv_sock, %struct.nfsrv_sock* %50, i32 0, i32 0
  %52 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %51, align 8
  %53 = load i32, i32* @M_TEMP, align 4
  %54 = call i32 @FREE(%struct.nfsrv_uc_arg* %52, i32 %53)
  %55 = load %struct.nfsrv_sock*, %struct.nfsrv_sock** %2, align 8
  %56 = getelementptr inbounds %struct.nfsrv_sock, %struct.nfsrv_sock* %55, i32 0, i32 0
  store %struct.nfsrv_uc_arg* null, %struct.nfsrv_uc_arg** %56, align 8
  %57 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %4, align 8
  %58 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @lck_mtx_unlock(i32 %59)
  br label %61

61:                                               ; preds = %49, %22
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @printf(i8*, %struct.nfsrv_uc_arg*) #1

declare dso_local i32 @TAILQ_REMOVE(i32, %struct.nfsrv_uc_arg*, i32) #1

declare dso_local i32 @FREE(%struct.nfsrv_uc_arg*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
