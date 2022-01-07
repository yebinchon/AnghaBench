; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_set_busy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_set_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.nfs_open_file = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfsmount* }
%struct.nfsmount = type { i32 }

@__const.nfs_open_file_set_busy.ts = private unnamed_addr constant %struct.timespec { i32 2, i32 0 }, align 4
@ENXIO = common dso_local global i32 0, align 4
@INTR = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_BUSY = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_WANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"nfs_open_file_set_busy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_open_file_set_busy(%struct.nfs_open_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_open_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsmount*, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfs_open_file* %0, %struct.nfs_open_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.timespec* @__const.nfs_open_file_set_busy.ts to i8*), i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %11 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  store %struct.nfsmount* %15, %struct.nfsmount** %6, align 8
  %16 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %17 = call i64 @nfs_mount_gone(%struct.nfsmount* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %3, align 4
  br label %75

21:                                               ; preds = %2
  %22 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %23 = load i32, i32* @INTR, align 4
  %24 = call i64 @NMFLAG(%struct.nfsmount* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @PCATCH, align 4
  br label %32

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  store i32 %33, i32* %9, align 4
  %34 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %35 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %34, i32 0, i32 1
  %36 = call i32 @lck_mtx_lock(i32* %35)
  br label %37

37:                                               ; preds = %50, %32
  %38 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %39 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NFS_OPEN_FILE_BUSY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @nfs_sigintr(%struct.nfsmount* %45, i32* null, i32 %46, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %61

50:                                               ; preds = %44
  %51 = load i32, i32* @NFS_OPEN_FILE_WANT, align 4
  %52 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %53 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %57 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %58 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %57, i32 0, i32 1
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @msleep(%struct.nfs_open_file* %56, i32* %58, i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.timespec* %7)
  store i32 0, i32* %9, align 4
  br label %37

61:                                               ; preds = %49, %37
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @NFS_OPEN_FILE_BUSY, align 4
  %66 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %67 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %61
  %71 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %72 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %71, i32 0, i32 1
  %73 = call i32 @lck_mtx_unlock(i32* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %19
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #2

declare dso_local i64 @NMFLAG(%struct.nfsmount*, i32) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i32 @nfs_sigintr(%struct.nfsmount*, i32*, i32, i32) #2

declare dso_local i32 @msleep(%struct.nfs_open_file*, i32*, i32, i8*, %struct.timespec*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
