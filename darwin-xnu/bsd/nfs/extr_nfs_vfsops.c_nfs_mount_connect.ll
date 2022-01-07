; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_mount_connect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_mount_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.nfsmount = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@__const.nfs_mount_connect.ts = private unnamed_addr constant %struct.timespec { i32 2, i32 0 }, align 4
@INTR = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@NFSSTA_MOUNT_THREAD = common dso_local global i32 0, align 4
@nfs_mount_connect_thread = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"nfs mount %s start socket connect thread failed\0A\00", align 1
@PSOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"nfsconnectthread\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@NMSOCK_UNMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_mount_connect(%struct.nfsmount* %0) #0 {
  %2 = alloca %struct.nfsmount*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.timespec* @__const.nfs_mount_connect.ts to i8*), i64 8, i1 false)
  %8 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %9 = load i32, i32* @INTR, align 4
  %10 = call i64 @NMFLAG(%struct.nfsmount* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @PCATCH, align 4
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  store i32 %16, i32* %4, align 4
  %17 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %18 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %17, i32 0, i32 2
  %19 = call i32 @lck_mtx_lock(i32* %18)
  %20 = load i32, i32* @NFSSTA_MOUNT_THREAD, align 4
  %21 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %22 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @nfs_mount_connect_thread, align 4
  %26 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %27 = call i64 @kernel_thread_start(i32 %25, %struct.nfsmount* %26, i32* %5)
  %28 = load i64, i64* @KERN_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %15
  %31 = load i32, i32* @NFSSTA_MOUNT_THREAD, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %34 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @EIO, align 4
  %38 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %39 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %41 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_2__* @vfs_statfs(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %50

47:                                               ; preds = %15
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @thread_deallocate(i32 %48)
  br label %50

50:                                               ; preds = %47, %30
  br label %51

51:                                               ; preds = %103, %50
  %52 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %53 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NFSSTA_MOUNT_THREAD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %51
  %59 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %60 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %59, i32 0, i32 3
  %61 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %62 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %61, i32 0, i32 2
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @PSOCK, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @msleep(i64* %60, i32* %62, i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.timespec* %6)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @EWOULDBLOCK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %69, %58
  %74 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %75 = call i32 (...) @current_thread()
  %76 = call i32 @nfs_sigintr(%struct.nfsmount* %74, i32* null, i32 %75, i32 1)
  store i32 %76, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %73, %69
  %79 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %80 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %86 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* @NMSOCK_UNMOUNT, align 4
  %89 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %90 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %94 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %87
  %98 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %99 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @wakeup(i64 %100)
  br label %102

102:                                              ; preds = %97, %87
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %73
  br label %51

104:                                              ; preds = %51
  %105 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %106 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %105, i32 0, i32 2
  %107 = call i32 @lck_mtx_unlock(i32* %106)
  %108 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %109 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @NMFLAG(%struct.nfsmount*, i32) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i64 @kernel_thread_start(i32, %struct.nfsmount*, i32*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local %struct.TYPE_2__* @vfs_statfs(i32) #2

declare dso_local i32 @thread_deallocate(i32) #2

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, %struct.timespec*) #2

declare dso_local i32 @nfs_sigintr(%struct.nfsmount*, i32*, i32, i32) #2

declare dso_local i32 @current_thread(...) #2

declare dso_local i32 @wakeup(i64) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
