; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_fork.c_cloneproc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_fork.c_cloneproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }

@P_LP64 = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SRUN = common dso_local global i32 0, align 4
@P_MEMSTAT_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cloneproc(i64 %0, i32* %1, %struct.TYPE_9__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %13, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = call %struct.TYPE_9__* @forkproc(%struct.TYPE_9__* %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %12, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %72

20:                                               ; preds = %5
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @P_LP64, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @TASK_NULL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %14, align 4
  br label %34

31:                                               ; preds = %20
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @task_get_64bit_data(i64 %32)
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %33, %31 ]
  store i32 %35, i32* %15, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32* @fork_create_child(i64 %36, i32* %37, %struct.TYPE_9__* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = call i32 @forkproc_free(%struct.TYPE_9__* %47)
  br label %72

49:                                               ; preds = %34
  %50 = load i32*, i32** %13, align 8
  %51 = call i64 @get_threadtask(i32* %50)
  store i64 %51, i64* %11, align 8
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @P_LP64, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = call i32 @OSBitOrAtomic(i32 %55, i32* %57)
  br label %65

59:                                               ; preds = %49
  %60 = load i32, i32* @P_LP64, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = call i32 @OSBitAndAtomic(i32 %61, i32* %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %68 = call i32 @pinsertchild(%struct.TYPE_9__* %66, %struct.TYPE_9__* %67)
  %69 = load i32, i32* @SRUN, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %46, %19
  %73 = load i32*, i32** %13, align 8
  ret i32* %73
}

declare dso_local %struct.TYPE_9__* @forkproc(%struct.TYPE_9__*) #1

declare dso_local i32 @task_get_64bit_data(i64) #1

declare dso_local i32* @fork_create_child(i64, i32*, %struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @forkproc_free(%struct.TYPE_9__*) #1

declare dso_local i64 @get_threadtask(i32*) #1

declare dso_local i32 @OSBitOrAtomic(i32, i32*) #1

declare dso_local i32 @OSBitAndAtomic(i32, i32*) #1

declare dso_local i32 @pinsertchild(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
