; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_task.c_machine_task_set_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_task.c_machine_task_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@ARM_DEBUG_STATE_COUNT = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@ads_zone = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_task_set_state(%struct.TYPE_3__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %61 [
    i32 129, label %12
    i32 128, label %45
  ]

12:                                               ; preds = %4
  %13 = load i64, i64* %8, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @ARM_DEBUG_STATE_COUNT, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %19, i32* %5, align 4
  br label %63

20:                                               ; preds = %12
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i32, i32* @ads_zone, align 4
  %27 = call i32* @zalloc(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %35, i32* %5, align 4
  br label %63

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32*, i32** %10, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @copy_debug_state(i32* %38, i32* %41, i32 %42)
  %44 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %44, i32* %5, align 4
  br label %63

45:                                               ; preds = %4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* @ads_zone, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @zfree(i32 %51, i32* %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %58, i32* %5, align 4
  br label %63

59:                                               ; preds = %45
  %60 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %4
  %62 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %59, %50, %37, %34, %18
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32* @zalloc(i32) #1

declare dso_local i32 @copy_debug_state(i32*, i32*, i32) #1

declare dso_local i32 @zfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
