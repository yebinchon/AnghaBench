; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_bdevvp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_bdevvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.vnode_fsparam = type { i8*, i32, i64, i64, i64, i64, i32, i32*, i32*, i32*, i32, %struct.mount* }
%struct.mount = type { i32 }
%struct.vfs_context = type { i32, i32 }

@NODEV = common dso_local global i64 0, align 8
@NULLVP = common dso_local global %struct.TYPE_11__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@FSCRED = common dso_local global i32 0, align 4
@VBLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bdevvp\00", align 1
@spec_vnodeop_p = common dso_local global i32 0, align 4
@VNFS_NOCACHE = common dso_local global i32 0, align 4
@VNFS_CANTCACHE = common dso_local global i32 0, align 4
@VNCREATE_FLAVOR = common dso_local global i32 0, align 4
@VCREATESIZE = common dso_local global i32 0, align 4
@VBDEVVP = common dso_local global i32 0, align 4
@VT_NON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"bdevvp failed: vnode_ref\00", align 1
@MNT_WAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"bdevvp failed: fsync\00", align 1
@BUF_WRITE_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"bdevvp failed: invalidateblks\00", align 1
@FREAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"bdevvp failed: open\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdevvp(i64 %0, %struct.TYPE_11__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode_fsparam, align 8
  %9 = alloca %struct.vfs_context, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @NODEV, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @NULLVP, align 8
  %15 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %15, align 8
  %16 = load i32, i32* @ENODEV, align 4
  store i32 %16, i32* %3, align 4
  br label %94

17:                                               ; preds = %2
  %18 = call i32 (...) @current_thread()
  %19 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %9, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @FSCRED, align 4
  %21 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 11
  store %struct.mount* null, %struct.mount** %22, align 8
  %23 = load i32, i32* @VBLK, align 4
  %24 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 10
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 9
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 8
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 7
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @spec_vnodeop_p, align 4
  %30 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 6
  store i32 %29, i32* %30, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 5
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @VNFS_NOCACHE, align 4
  %35 = load i32, i32* @VNFS_CANTCACHE, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @VNCREATE_FLAVOR, align 4
  %41 = load i32, i32* @VCREATESIZE, align 4
  %42 = call i32 @vnode_create(i32 %40, i32 %41, %struct.vnode_fsparam* %8, %struct.TYPE_11__** %6)
  store i32 %42, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %17
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** @NULLVP, align 8
  %46 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %46, align 8
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %94

48:                                               ; preds = %17
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = call i32 @vnode_lock_spin(%struct.TYPE_11__* %49)
  %51 = load i32, i32* @VBDEVVP, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @VT_NON, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = call i32 @vnode_unlock(%struct.TYPE_11__* %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = call i32 @vnode_ref(%struct.TYPE_11__* %61)
  store i32 %62, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %48
  %65 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %94

67:                                               ; preds = %48
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = load i32, i32* @MNT_WAIT, align 4
  %70 = call i32 @VNOP_FSYNC(%struct.TYPE_11__* %68, i32 %69, %struct.vfs_context* %9)
  store i32 %70, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %94

75:                                               ; preds = %67
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = load i32, i32* @BUF_WRITE_DATA, align 4
  %78 = call i32 @buf_invalidateblks(%struct.TYPE_11__* %76, i32 %77, i32 0, i32 0)
  store i32 %78, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %94

83:                                               ; preds = %75
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = load i32, i32* @FREAD, align 4
  %86 = call i32 @VNOP_OPEN(%struct.TYPE_11__* %84, i32 %85, %struct.vfs_context* %9)
  store i32 %86, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %94

91:                                               ; preds = %83
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %88, %80, %72, %64, %44, %13
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @vnode_create(i32, i32, %struct.vnode_fsparam*, %struct.TYPE_11__**) #1

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_11__*) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @vnode_ref(%struct.TYPE_11__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VNOP_FSYNC(%struct.TYPE_11__*, i32, %struct.vfs_context*) #1

declare dso_local i32 @buf_invalidateblks(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @VNOP_OPEN(%struct.TYPE_11__*, i32, %struct.vfs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
