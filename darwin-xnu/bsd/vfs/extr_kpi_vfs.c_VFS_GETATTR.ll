; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_VFS_GETATTR.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_VFS_GETATTR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }
%struct.vfs_attr = type { i32 }

@dead_mountp = common dso_local global %struct.TYPE_7__* null, align 8
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VFS_GETATTR(%struct.TYPE_7__* %0, %struct.vfs_attr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.vfs_attr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.vfs_attr* %1, %struct.vfs_attr** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dead_mountp, align 8
  %11 = icmp eq %struct.TYPE_7__* %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.TYPE_7__*, %struct.vfs_attr*, i32*)**
  %18 = load i32 (%struct.TYPE_7__*, %struct.vfs_attr*, i32*)*, i32 (%struct.TYPE_7__*, %struct.vfs_attr*, i32*)** %17, align 8
  %19 = icmp eq i32 (%struct.TYPE_7__*, %struct.vfs_attr*, i32*)* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %12, %3
  %21 = load i32, i32* @ENOTSUP, align 4
  store i32 %21, i32* %4, align 4
  br label %39

22:                                               ; preds = %12
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32* (...) @vfs_context_current()
  store i32* %26, i32** %7, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.TYPE_7__*, %struct.vfs_attr*, i32*)**
  %33 = load i32 (%struct.TYPE_7__*, %struct.vfs_attr*, i32*)*, i32 (%struct.TYPE_7__*, %struct.vfs_attr*, i32*)** %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load %struct.vfs_attr*, %struct.vfs_attr** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 %33(%struct.TYPE_7__* %34, %struct.vfs_attr* %35, i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %27, %20
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32* @vfs_context_current(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
