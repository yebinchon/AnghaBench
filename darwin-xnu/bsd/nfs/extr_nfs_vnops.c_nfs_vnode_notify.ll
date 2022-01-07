; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnode_notify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnode_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfs_vattr = type { i32, i32, i32, i32, i32 }
%struct.vnode_attr = type { i32 }
%struct.timeval = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@VA_64BITOBJIDS = common dso_local global i32 0, align 4
@va_fsid = common dso_local global i32 0, align 4
@va_fileid = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_nlink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_vnode_notify(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsmount*, align 8
  %6 = alloca %struct.nfs_vattr, align 4
  %7 = alloca %struct.vnode_attr, align 4
  %8 = alloca %struct.vnode_attr*, align 8
  %9 = alloca %struct.timeval, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_9__* %10)
  store %struct.nfsmount* %11, %struct.nfsmount** %5, align 8
  store %struct.vnode_attr* null, %struct.vnode_attr** %8, align 8
  %12 = call i32 @microuptime(%struct.timeval* %9)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %21 = icmp ne %struct.nfsmount* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %103

28:                                               ; preds = %19
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = call i32 @vfs_get_notify_attributes(%struct.vnode_attr* %7)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = call i32 @nfs_getattrcache(%struct.TYPE_9__* %41, %struct.nfs_vattr* %6, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %97, label %44

44:                                               ; preds = %28
  store %struct.vnode_attr* %7, %struct.vnode_attr** %8, align 8
  %45 = load %struct.vnode_attr*, %struct.vnode_attr** %8, align 8
  %46 = call i32 @VATTR_INIT(%struct.vnode_attr* %45)
  %47 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %48 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @VA_64BITOBJIDS, align 4
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = load %struct.vnode_attr*, %struct.vnode_attr** %8, align 8
  %57 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.vnode_attr*, %struct.vnode_attr** %8, align 8
  %61 = load i32, i32* @va_fsid, align 4
  %62 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %63 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_10__* @vfs_statfs(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @VATTR_RETURN(%struct.vnode_attr* %60, i32 %61, i32 %70)
  %72 = load %struct.vnode_attr*, %struct.vnode_attr** %8, align 8
  %73 = load i32, i32* @va_fileid, align 4
  %74 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %6, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @VATTR_RETURN(%struct.vnode_attr* %72, i32 %73, i32 %75)
  %77 = load %struct.vnode_attr*, %struct.vnode_attr** %8, align 8
  %78 = load i32, i32* @va_mode, align 4
  %79 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %6, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @VATTR_RETURN(%struct.vnode_attr* %77, i32 %78, i32 %80)
  %82 = load %struct.vnode_attr*, %struct.vnode_attr** %8, align 8
  %83 = load i32, i32* @va_uid, align 4
  %84 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %6, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @VATTR_RETURN(%struct.vnode_attr* %82, i32 %83, i32 %85)
  %87 = load %struct.vnode_attr*, %struct.vnode_attr** %8, align 8
  %88 = load i32, i32* @va_gid, align 4
  %89 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @VATTR_RETURN(%struct.vnode_attr* %87, i32 %88, i32 %90)
  %92 = load %struct.vnode_attr*, %struct.vnode_attr** %8, align 8
  %93 = load i32, i32* @va_nlink, align 4
  %94 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %6, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @VATTR_RETURN(%struct.vnode_attr* %92, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %54, %28
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = call i32 @NFSTOV(%struct.TYPE_9__* %98)
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.vnode_attr*, %struct.vnode_attr** %8, align 8
  %102 = call i32 @vnode_notify(i32 %99, i32 %100, %struct.vnode_attr* %101)
  br label %103

103:                                              ; preds = %97, %22
  ret void
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_9__*) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @vfs_get_notify_attributes(%struct.vnode_attr*) #1

declare dso_local i32 @nfs_getattrcache(%struct.TYPE_9__*, %struct.nfs_vattr*, i32) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_RETURN(%struct.vnode_attr*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @vfs_statfs(i32) #1

declare dso_local i32 @vnode_notify(i32, i32, %struct.vnode_attr*) #1

declare dso_local i32 @NFSTOV(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
