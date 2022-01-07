; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_mount_state_in_use_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_mount_state_in_use_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.nfsmount = type { i32, i32, i32 }

@__const.nfs_mount_state_in_use_start.ts = private unnamed_addr constant %struct.timespec { i32 1, i32 0 }, align 4
@INTR = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFSSTA_FORCE = common dso_local global i32 0, align 4
@NFSSTA_DEAD = common dso_local global i32 0, align 4
@NFSSTA_RECOVER = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nfsrecoverwait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_mount_state_in_use_start(%struct.nfsmount* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.timespec* @__const.nfs_mount_state_in_use_start.ts to i8*), i64 8, i1 false)
  store i32 0, i32* %7, align 4
  %10 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %11 = load i32, i32* @INTR, align 4
  %12 = call i64 @NMFLAG(%struct.nfsmount* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @PCATCH, align 4
  br label %20

19:                                               ; preds = %14, %2
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  store i32 %21, i32* %8, align 4
  %22 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %23 = call i64 @nfs_mount_gone(%struct.nfsmount* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %3, align 4
  br label %83

27:                                               ; preds = %20
  %28 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %29 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %28, i32 0, i32 1
  %30 = call i32 @lck_mtx_lock(i32* %29)
  %31 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %32 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NFSSTA_FORCE, align 4
  %35 = load i32, i32* @NFSSTA_DEAD, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %41 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %40, i32 0, i32 1
  %42 = call i32 @lck_mtx_unlock(i32* %41)
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %3, align 4
  br label %83

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %58, %44
  %46 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %47 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NFSSTA_RECOVER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @nfs_sigintr(%struct.nfsmount* %53, i32* null, i64 %54, i32 1)
  store i32 %55, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %70

58:                                               ; preds = %52
  %59 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %60 = call i32 @nfs_mount_sock_thread_wake(%struct.nfsmount* %59)
  %61 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %62 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %61, i32 0, i32 0
  %63 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %64 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %63, i32 0, i32 1
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @PZERO, align 4
  %67 = sub nsw i32 %66, 1
  %68 = or i32 %65, %67
  %69 = call i32 @msleep(i32* %62, i32* %64, i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.timespec* %6)
  store i32 0, i32* %8, align 4
  br label %45

70:                                               ; preds = %57, %45
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %75 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %70
  %79 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %80 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %79, i32 0, i32 1
  %81 = call i32 @lck_mtx_unlock(i32* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %39, %25
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @NMFLAG(%struct.nfsmount*, i32) #2

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

declare dso_local i32 @nfs_sigintr(%struct.nfsmount*, i32*, i64, i32) #2

declare dso_local i32 @nfs_mount_sock_thread_wake(%struct.nfsmount*) #2

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, %struct.timespec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
