; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawn_file_actions_addclose.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawn_file_actions_addclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OPEN_MAX = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PSFA_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawn_file_actions_addclose(i32** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32**, i32*** %4, align 8
  %9 = icmp eq i32** %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32**, i32*** %4, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %61

16:                                               ; preds = %10
  %17 = load i32**, i32*** %4, align 8
  %18 = bitcast i32** %17 to %struct.TYPE_5__**
  store %struct.TYPE_5__** %18, %struct.TYPE_5__*** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @OPEN_MAX, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %16
  %26 = load i32, i32* @EBADF, align 4
  store i32 %26, i32* %3, align 4
  br label %61

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %39 = call i64 @_posix_spawn_file_actions_grow(%struct.TYPE_5__** %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %3, align 4
  br label %61

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %52
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %7, align 8
  %55 = load i32, i32* @PSFA_CLOSE, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %44, %41, %25, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @_posix_spawn_file_actions_grow(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
