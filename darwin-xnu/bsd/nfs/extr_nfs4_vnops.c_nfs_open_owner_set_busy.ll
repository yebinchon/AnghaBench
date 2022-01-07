; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_owner_set_busy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_owner_set_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.nfs_open_owner = type { i32, i32, %struct.nfsmount* }
%struct.nfsmount = type { i32 }

@__const.nfs_open_owner_set_busy.ts = private unnamed_addr constant %struct.timespec { i32 2, i32 0 }, align 4
@ENXIO = common dso_local global i32 0, align 4
@INTR = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@NFS_OPEN_OWNER_BUSY = common dso_local global i32 0, align 4
@NFS_OPEN_OWNER_WANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"nfs_open_owner_set_busy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_open_owner_set_busy(%struct.nfs_open_owner* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_open_owner*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsmount*, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfs_open_owner* %0, %struct.nfs_open_owner** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.timespec* @__const.nfs_open_owner_set_busy.ts to i8*), i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %11 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %11, i32 0, i32 2
  %13 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  store %struct.nfsmount* %13, %struct.nfsmount** %6, align 8
  %14 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %15 = call i64 @nfs_mount_gone(%struct.nfsmount* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %21 = load i32, i32* @INTR, align 4
  %22 = call i64 @NMFLAG(%struct.nfsmount* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @PCATCH, align 4
  br label %30

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  store i32 %31, i32* %9, align 4
  %32 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %4, align 8
  %33 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %32, i32 0, i32 1
  %34 = call i32 @lck_mtx_lock(i32* %33)
  br label %35

35:                                               ; preds = %48, %30
  %36 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NFS_OPEN_OWNER_BUSY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @nfs_sigintr(%struct.nfsmount* %43, i32* null, i32 %44, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %59

48:                                               ; preds = %42
  %49 = load i32, i32* @NFS_OPEN_OWNER_WANT, align 4
  %50 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %4, align 8
  %51 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %4, align 8
  %55 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %4, align 8
  %56 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %55, i32 0, i32 1
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @msleep(%struct.nfs_open_owner* %54, i32* %56, i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.timespec* %7)
  store i32 0, i32* %9, align 4
  br label %35

59:                                               ; preds = %47, %35
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @NFS_OPEN_OWNER_BUSY, align 4
  %64 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %4, align 8
  %65 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %59
  %69 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %4, align 8
  %70 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %69, i32 0, i32 1
  %71 = call i32 @lck_mtx_unlock(i32* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #2

declare dso_local i64 @NMFLAG(%struct.nfsmount*, i32) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i32 @nfs_sigintr(%struct.nfsmount*, i32*, i32, i32) #2

declare dso_local i32 @msleep(%struct.nfs_open_owner*, i32*, i32, i8*, %struct.timespec*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
