; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_upcall.c_nfsrv_uc_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_upcall.c_nfsrv_uc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"nfs_upcall_locks\00", align 1
@LCK_GRP_ATTR_NULL = common dso_local global i32 0, align 4
@nfsrv_uc_group = common dso_local global i32 0, align 4
@NFS_UC_HASH_SZ = common dso_local global i32 0, align 4
@nfsrv_uc_queue_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@LCK_ATTR_NULL = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i32 0, align 4
@nfsrv_uc_shutdown_lock = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsrv_uc_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @LCK_GRP_ATTR_NULL, align 4
  %3 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 %3, i32* @nfsrv_uc_group, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %35, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @NFS_UC_HASH_SZ, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %38

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsrv_uc_queue_tbl, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @TAILQ_INIT(i32 %14)
  %16 = load i32, i32* @nfsrv_uc_group, align 4
  %17 = load i32, i32* @LCK_ATTR_NULL, align 4
  %18 = call i8* @lck_mtx_alloc_init(i32 %16, i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsrv_uc_queue_tbl, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i8* %18, i8** %23, align 8
  %24 = load i32, i32* @THREAD_NULL, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsrv_uc_queue_tbl, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %24, i32* %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsrv_uc_queue_tbl, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %8
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %4

38:                                               ; preds = %4
  %39 = load i32, i32* @nfsrv_uc_group, align 4
  %40 = load i32, i32* @LCK_ATTR_NULL, align 4
  %41 = call i8* @lck_mtx_alloc_init(i32 %39, i32 %40)
  store i8* %41, i8** @nfsrv_uc_shutdown_lock, align 8
  ret void
}

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32) #1

declare dso_local i8* @lck_mtx_alloc_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
