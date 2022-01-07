; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_mount_state_wait_for_recovery.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_mount_state_wait_for_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.nfsmount = type { i32, i32 }

@__const.nfs_mount_state_wait_for_recovery.ts = private unnamed_addr constant %struct.timespec { i32 1, i32 0 }, align 4
@INTR = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@NFSSTA_RECOVER = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nfsrecoverwait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_mount_state_wait_for_recovery(%struct.nfsmount* %0) #0 {
  %2 = alloca %struct.nfsmount*, align 8
  %3 = alloca %struct.timespec, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %2, align 8
  %6 = bitcast %struct.timespec* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.timespec* @__const.nfs_mount_state_wait_for_recovery.ts to i8*), i64 8, i1 false)
  store i32 0, i32* %4, align 4
  %7 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %8 = load i32, i32* @INTR, align 4
  %9 = call i64 @NMFLAG(%struct.nfsmount* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @PCATCH, align 4
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %17 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %16, i32 0, i32 1
  %18 = call i32 @lck_mtx_lock(i32* %17)
  br label %19

19:                                               ; preds = %32, %14
  %20 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %21 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NFSSTA_RECOVER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %28 = call i32 (...) @current_thread()
  %29 = call i32 @nfs_sigintr(%struct.nfsmount* %27, i32* null, i32 %28, i32 1)
  store i32 %29, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %44

32:                                               ; preds = %26
  %33 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %34 = call i32 @nfs_mount_sock_thread_wake(%struct.nfsmount* %33)
  %35 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %36 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %35, i32 0, i32 0
  %37 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %38 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %37, i32 0, i32 1
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PZERO, align 4
  %41 = sub nsw i32 %40, 1
  %42 = or i32 %39, %41
  %43 = call i32 @msleep(i32* %36, i32* %38, i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.timespec* %3)
  store i32 0, i32* %5, align 4
  br label %19

44:                                               ; preds = %31, %19
  %45 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %46 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %45, i32 0, i32 1
  %47 = call i32 @lck_mtx_unlock(i32* %46)
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @NMFLAG(%struct.nfsmount*, i32) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i32 @nfs_sigintr(%struct.nfsmount*, i32*, i32, i32) #2

declare dso_local i32 @current_thread(...) #2

declare dso_local i32 @nfs_mount_sock_thread_wake(%struct.nfsmount*) #2

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, %struct.timespec*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
