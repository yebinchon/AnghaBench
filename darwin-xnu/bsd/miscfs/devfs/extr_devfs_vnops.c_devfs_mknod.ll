; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_mknod.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_mknod_args = type { %struct.vnode**, %struct.vnode_attr*, %struct.vnode*, %struct.componentname* }
%struct.vnode_attr = type { i64, i32, i32, i32, i32 }
%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32 }
%struct.proc = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }

@VBLK = common dso_local global i64 0, align 8
@VCHR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEV_BDEV = common dso_local global i32 0, align 4
@DEV_CDEV = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_mknod_args*)* @devfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_mknod(%struct.vnop_mknod_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_mknod_args*, align 8
  %4 = alloca %struct.componentname*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca %struct.vnode_attr*, align 8
  %14 = alloca %struct.vnode**, align 8
  store %struct.vnop_mknod_args* %0, %struct.vnop_mknod_args** %3, align 8
  %15 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %16 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %15, i32 0, i32 3
  %17 = load %struct.componentname*, %struct.componentname** %16, align 8
  store %struct.componentname* %17, %struct.componentname** %4, align 8
  %18 = load %struct.componentname*, %struct.componentname** %4, align 8
  %19 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.proc* @vfs_context_proc(i32 %21)
  store %struct.proc* %22, %struct.proc** %6, align 8
  %23 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %24 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %23, i32 0, i32 2
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  store %struct.vnode* %25, %struct.vnode** %10, align 8
  store i32 0, i32* %11, align 4
  %26 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %27 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %26, i32 0, i32 1
  %28 = load %struct.vnode_attr*, %struct.vnode_attr** %27, align 8
  store %struct.vnode_attr* %28, %struct.vnode_attr** %13, align 8
  %29 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %30 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %29, i32 0, i32 0
  %31 = load %struct.vnode**, %struct.vnode*** %30, align 8
  store %struct.vnode** %31, %struct.vnode*** %14, align 8
  %32 = load %struct.vnode**, %struct.vnode*** %14, align 8
  store %struct.vnode* null, %struct.vnode** %32, align 8
  %33 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %34 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VBLK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %1
  %39 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %40 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VCHR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %2, align 4
  br label %112

46:                                               ; preds = %38, %1
  %47 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %48 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = call i32 (...) @DEVFS_LOCK()
  %52 = load %struct.vnode*, %struct.vnode** %10, align 8
  %53 = call %struct.TYPE_10__* @VTODN(%struct.vnode* %52)
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %9, align 8
  %54 = load %struct.componentname*, %struct.componentname** %4, align 8
  %55 = getelementptr inbounds %struct.componentname, %struct.componentname* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %59 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VBLK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = load i32, i32* @DEV_BDEV, align 4
  br label %67

65:                                               ; preds = %46
  %66 = load i32, i32* @DEV_CDEV, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = call i32 @dev_add_entry(i32 %56, %struct.TYPE_10__* %57, i32 %68, %struct.TYPE_9__* %12, i32* null, i32* null, %struct.TYPE_11__** %8)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %109

73:                                               ; preds = %67
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %7, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = load %struct.vnode**, %struct.vnode*** %14, align 8
  %79 = load %struct.proc*, %struct.proc** %6, align 8
  %80 = call i32 @devfs_dntovn(%struct.TYPE_10__* %77, %struct.vnode** %78, %struct.proc* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %109

84:                                               ; preds = %73
  %85 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %86 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %91 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %96 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %101 = load i32, i32* @va_uid, align 4
  %102 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %100, i32 %101)
  %103 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %104 = load i32, i32* @va_gid, align 4
  %105 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %103, i32 %104)
  %106 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %107 = load i32, i32* @va_mode, align 4
  %108 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %106, i32 %107)
  br label %109

109:                                              ; preds = %84, %83, %72
  %110 = call i32 (...) @DEVFS_UNLOCK()
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %109, %44
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.proc* @vfs_context_proc(i32) #1

declare dso_local i32 @DEVFS_LOCK(...) #1

declare dso_local %struct.TYPE_10__* @VTODN(%struct.vnode*) #1

declare dso_local i32 @dev_add_entry(i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__*, i32*, i32*, %struct.TYPE_11__**) #1

declare dso_local i32 @devfs_dntovn(%struct.TYPE_10__*, %struct.vnode**, %struct.proc*) #1

declare dso_local i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @DEVFS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
