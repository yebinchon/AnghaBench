; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_VFS_MOUNT.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_VFS_MOUNT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }

@dead_mountp = common dso_local global %struct.TYPE_9__* null, align 8
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VFS_MOUNT(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dead_mountp, align 8
  %13 = icmp eq %struct.TYPE_9__* %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.TYPE_9__*, i32, i32, i32)**
  %20 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %19, align 8
  %21 = icmp eq i32 (%struct.TYPE_9__*, i32, i32, i32)* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14, %4
  %23 = load i32, i32* @ENOTSUP, align 4
  store i32 %23, i32* %5, align 4
  br label %61

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @vfs_context_is64bit(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = call i64 @vfs_64bitready(%struct.TYPE_9__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.TYPE_9__*, i32, i32, i32)**
  %38 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 %38(%struct.TYPE_9__* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  br label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @ENOTSUP, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %32
  br label %59

47:                                               ; preds = %24
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.TYPE_9__*, i32, i32, i32)**
  %53 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 %53(%struct.TYPE_9__* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %47, %46
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %22
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @vfs_context_is64bit(i32) #1

declare dso_local i64 @vfs_64bitready(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
