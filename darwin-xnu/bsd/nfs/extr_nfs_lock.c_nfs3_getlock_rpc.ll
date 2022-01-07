; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfs3_getlock_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfs3_getlock_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.nfs_lock_owner = type { i32 }
%struct.flock = type { i64, i8*, i32, i32, i32 }
%struct.nfsmount = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i8* }

@ENXIO = common dso_local global i32 0, align 4
@LOCKD_MSG_VERSION = common dso_local global i32 0, align 4
@LOCKD_MSG_TEST = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i64 0, align 8
@NFSX_V2FH = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i8* null, align 8
@F_UNLCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_getlock_rpc(%struct.TYPE_11__* %0, %struct.nfs_lock_owner* %1, %struct.flock* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.nfs_lock_owner*, align 8
  %10 = alloca %struct.flock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsmount*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.nfs_lock_owner* %1, %struct.nfs_lock_owner** %9, align 8
  store %struct.flock* %2, %struct.flock** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__* %18)
  store %struct.nfsmount* %19, %struct.nfsmount** %14, align 8
  %20 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %21 = call i64 @nfs_mount_gone(%struct.nfsmount* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %7, align 4
  br label %151

25:                                               ; preds = %6
  %26 = call i32 @bzero(%struct.TYPE_12__* %16, i32 64)
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %17, align 8
  %28 = load i32, i32* @LOCKD_MSG_VERSION, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @LOCKD_MSG_TEST, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %37 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NFS_VER2, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @NFSX_V2FH, align 4
  br label %47

43:                                               ; preds = %25
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi i32 [ %42, %41 ], [ %46, %43 ]
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bcopy(i32 %53, i32 %56, i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @vfs_context_ucred(i32 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = call i32 @cru2x(i32 %62, i32* %64)
  %66 = load i8*, i8** @SEEK_SET, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  store i8* %66, i8** %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @NFS_FLOCK_LENGTH(i32 %74, i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load %struct.flock*, %struct.flock** %10, align 8
  %81 = getelementptr inbounds %struct.flock, %struct.flock* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %9, align 8
  %87 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @vfs_context_thread(i32 %93)
  %95 = call i32 @nfs3_lockd_request(%struct.TYPE_11__* %92, i32 0, %struct.TYPE_12__* %16, i32 0, i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %149, label %98

98:                                               ; preds = %47
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @LOCKD_MSG_TEST, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %149

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %149, label %109

109:                                              ; preds = %105
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @F_UNLCK, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %109
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.flock*, %struct.flock** %10, align 8
  %122 = getelementptr inbounds %struct.flock, %struct.flock* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.flock*, %struct.flock** %10, align 8
  %128 = getelementptr inbounds %struct.flock, %struct.flock* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.flock*, %struct.flock** %10, align 8
  %134 = getelementptr inbounds %struct.flock, %struct.flock* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.flock*, %struct.flock** %10, align 8
  %140 = getelementptr inbounds %struct.flock, %struct.flock* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load i8*, i8** @SEEK_SET, align 8
  %142 = load %struct.flock*, %struct.flock** %10, align 8
  %143 = getelementptr inbounds %struct.flock, %struct.flock* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  br label %148

144:                                              ; preds = %109
  %145 = load i64, i64* @F_UNLCK, align 8
  %146 = load %struct.flock*, %struct.flock** %10, align 8
  %147 = getelementptr inbounds %struct.flock, %struct.flock* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %144, %116
  br label %149

149:                                              ; preds = %148, %105, %98, %47
  %150 = load i32, i32* %15, align 4
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %149, %23
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @bzero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @cru2x(i32, i32*) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @NFS_FLOCK_LENGTH(i32, i32) #1

declare dso_local i32 @nfs3_lockd_request(%struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
