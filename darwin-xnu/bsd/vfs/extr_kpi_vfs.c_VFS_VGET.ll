; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_VFS_VGET.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_VFS_VGET.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }
%struct.vnode = type { i32 }

@dead_mountp = common dso_local global %struct.TYPE_7__* null, align 8
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VFS_VGET(%struct.TYPE_7__* %0, i32 %1, %struct.vnode** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.vnode** %2, %struct.vnode*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dead_mountp, align 8
  %13 = icmp eq %struct.TYPE_7__* %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.TYPE_7__*, i32, %struct.vnode**, i32*)**
  %20 = load i32 (%struct.TYPE_7__*, i32, %struct.vnode**, i32*)*, i32 (%struct.TYPE_7__*, i32, %struct.vnode**, i32*)** %19, align 8
  %21 = icmp eq i32 (%struct.TYPE_7__*, i32, %struct.vnode**, i32*)* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14, %4
  %23 = load i32, i32* @ENOTSUP, align 4
  store i32 %23, i32* %5, align 4
  br label %42

24:                                               ; preds = %14
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32* (...) @vfs_context_current()
  store i32* %28, i32** %9, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.TYPE_7__*, i32, %struct.vnode**, i32*)**
  %35 = load i32 (%struct.TYPE_7__*, i32, %struct.vnode**, i32*)*, i32 (%struct.TYPE_7__*, i32, %struct.vnode**, i32*)** %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 %35(%struct.TYPE_7__* %36, i32 %37, %struct.vnode** %38, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %29, %22
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32* @vfs_context_current(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
