; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfs3_setlock_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfs3_setlock_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.nfs_open_file = type { i64 }
%struct.nfs_file_lock = type { i32, i32, i32, i32, %struct.nfs_lock_owner* }
%struct.nfs_lock_owner = type { i32, i64 }
%struct.nfsmount = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@LOCKD_MSG_VERSION = common dso_local global i32 0, align 4
@NFS_FILE_LOCK_WAIT = common dso_local global i32 0, align 4
@LOCKD_MSG_BLOCK = common dso_local global i32 0, align 4
@LOCKD_MSG_RECLAIM = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i64 0, align 8
@NFSX_V2FH = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_setlock_rpc(%struct.TYPE_11__* %0, %struct.nfs_open_file* %1, %struct.nfs_file_lock* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.nfs_open_file*, align 8
  %11 = alloca %struct.nfs_file_lock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfs_lock_owner*, align 8
  %17 = alloca %struct.nfsmount*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store %struct.nfs_open_file* %1, %struct.nfs_open_file** %10, align 8
  store %struct.nfs_file_lock* %2, %struct.nfs_file_lock** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %22 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %21, i32 0, i32 4
  %23 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %22, align 8
  store %struct.nfs_lock_owner* %23, %struct.nfs_lock_owner** %16, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__* %24)
  store %struct.nfsmount* %25, %struct.nfsmount** %17, align 8
  %26 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %27 = call i64 @nfs_mount_gone(%struct.nfsmount* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %8, align 4
  br label %152

31:                                               ; preds = %7
  %32 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %33 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %38 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @nfs_open_owner_ref(i64 %39)
  %41 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %42 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %45 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %36, %31
  %47 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @nfs_lock_owner_set_busy(%struct.nfs_lock_owner* %47, i32 %48)
  store i32 %49, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %18, align 4
  store i32 %52, i32* %8, align 4
  br label %152

53:                                               ; preds = %46
  %54 = call i32 @bzero(%struct.TYPE_12__* %19, i32 40)
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %20, align 8
  %56 = load i32, i32* @LOCKD_MSG_VERSION, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %60 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NFS_FILE_LOCK_WAIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %53
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @LOCKD_MSG_BLOCK, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %65, %53
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* @LOCKD_MSG_RECLAIM, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %74
  %84 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %85 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NFS_VER2, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @NFSX_V2FH, align 4
  br label %95

91:                                               ; preds = %83
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  br label %95

95:                                               ; preds = %91, %89
  %96 = phi i32 [ %90, %89 ], [ %94, %91 ]
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @bcopy(i32 %101, i32 %104, i32 %107)
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = call i32 @cru2x(i32 %109, i32* %111)
  %113 = load i32, i32* @SEEK_SET, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  store i32 %113, i32* %116, align 4
  %117 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %118 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 4
  %123 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %124 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %127 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @NFS_FLOCK_LENGTH(i32 %125, i32 %128)
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 4
  %133 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %11, align 8
  %134 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %140 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @nfs3_lockd_request(%struct.TYPE_11__* %145, i32 0, %struct.TYPE_12__* %19, i32 %146, i32 %147)
  store i32 %148, i32* %18, align 4
  %149 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %16, align 8
  %150 = call i32 @nfs_lock_owner_clear_busy(%struct.nfs_lock_owner* %149)
  %151 = load i32, i32* %18, align 4
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %95, %51, %29
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_open_owner_ref(i64) #1

declare dso_local i32 @nfs_lock_owner_set_busy(%struct.nfs_lock_owner*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @cru2x(i32, i32*) #1

declare dso_local i32 @NFS_FLOCK_LENGTH(i32, i32) #1

declare dso_local i32 @nfs3_lockd_request(%struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @nfs_lock_owner_clear_busy(%struct.nfs_lock_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
