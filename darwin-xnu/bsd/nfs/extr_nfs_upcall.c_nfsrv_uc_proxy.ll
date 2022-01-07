; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_upcall.c_nfsrv_uc_proxy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_upcall.c_nfsrv_uc_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_uc_queue = type { i32, i32, i32 }
%struct.nfsrv_uc_arg = type { i32, i32, i32, i32, i32 }

@nfsrv_uc_queue_tbl = common dso_local global %struct.nfsrv_uc_queue* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"nfsrv_uc_proxy called for %p (%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\09Up-call queued on %d for wakeup of %p\0A\00", align 1
@NFS_UC_QUEUED = common dso_local global i32 0, align 4
@nua_svcq = common dso_local global i32 0, align 4
@NFS_UC_QUEUE_SLEEPING = common dso_local global i32 0, align 4
@nfsrv_uc_queue_count = common dso_local global i32 0, align 4
@nfsrv_uc_queue_limit = common dso_local global i64 0, align 8
@nfsrv_uc_queue_max_seen = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @nfsrv_uc_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_uc_proxy(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsrv_uc_arg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsrv_uc_queue*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nfsrv_uc_arg*
  store %struct.nfsrv_uc_arg* %11, %struct.nfsrv_uc_arg** %7, align 8
  %12 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %7, align 8
  %13 = getelementptr inbounds %struct.nfsrv_uc_arg, %struct.nfsrv_uc_arg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** @nfsrv_uc_queue_tbl, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %15, i64 %17
  store %struct.nfsrv_uc_queue* %18, %struct.nfsrv_uc_queue** %9, align 8
  %19 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %9, align 8
  %20 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lck_mtx_lock(i32 %21)
  %23 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %7, align 8
  %24 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %7, align 8
  %25 = getelementptr inbounds %struct.nfsrv_uc_arg, %struct.nfsrv_uc_arg* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.nfsrv_uc_arg* %23, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %9, align 8
  %30 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %28, %struct.nfsrv_uc_queue* %29)
  %31 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %7, align 8
  %32 = icmp eq %struct.nfsrv_uc_arg* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %3
  %34 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %7, align 8
  %35 = getelementptr inbounds %struct.nfsrv_uc_arg, %struct.nfsrv_uc_arg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NFS_UC_QUEUED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33, %3
  %41 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %9, align 8
  %42 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lck_mtx_unlock(i32 %43)
  br label %77

45:                                               ; preds = %33
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %7, align 8
  %48 = getelementptr inbounds %struct.nfsrv_uc_arg, %struct.nfsrv_uc_arg* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %7, align 8
  %51 = getelementptr inbounds %struct.nfsrv_uc_arg, %struct.nfsrv_uc_arg* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %9, align 8
  %53 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %7, align 8
  %56 = load i32, i32* @nua_svcq, align 4
  %57 = call i32 @TAILQ_INSERT_TAIL(i32 %54, %struct.nfsrv_uc_arg* %55, i32 %56)
  %58 = load i32, i32* @NFS_UC_QUEUED, align 4
  %59 = load %struct.nfsrv_uc_arg*, %struct.nfsrv_uc_arg** %7, align 8
  %60 = getelementptr inbounds %struct.nfsrv_uc_arg, %struct.nfsrv_uc_arg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %9, align 8
  %64 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NFS_UC_QUEUE_SLEEPING, align 4
  %67 = or i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %45
  %70 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %9, align 8
  %71 = call i32 @wakeup(%struct.nfsrv_uc_queue* %70)
  br label %72

72:                                               ; preds = %69, %45
  %73 = load %struct.nfsrv_uc_queue*, %struct.nfsrv_uc_queue** %9, align 8
  %74 = getelementptr inbounds %struct.nfsrv_uc_queue, %struct.nfsrv_uc_queue* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @lck_mtx_unlock(i32 %75)
  br label %77

77:                                               ; preds = %72, %40
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32, %struct.nfsrv_uc_arg*, i32) #1

declare dso_local i32 @wakeup(%struct.nfsrv_uc_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
