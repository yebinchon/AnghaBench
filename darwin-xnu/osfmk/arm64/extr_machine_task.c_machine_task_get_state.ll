; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_task.c_machine_task_get_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_task.c_machine_task_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@ARM_LEGACY_DEBUG_STATE_COUNT = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@ARM_DEBUG_STATE32_COUNT = common dso_local global i32 0, align 4
@ARM_DEBUG_STATE64_COUNT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_task_get_state(%struct.TYPE_4__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %104 [
    i32 130, label %14
    i32 129, label %44
    i32 128, label %74
  ]

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = call i32 @task_has_64Bit_data(%struct.TYPE_4__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ARM_LEGACY_DEBUG_STATE_COUNT, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %14
  %26 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %26, i32* %5, align 4
  br label %106

27:                                               ; preds = %20
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @bzero(i64 %33, i32 4)
  br label %42

35:                                               ; preds = %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @copy_legacy_debug_state(i32* %38, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %43, i32* %5, align 4
  br label %106

44:                                               ; preds = %4
  %45 = load i64, i64* %8, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %11, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = call i32 @task_has_64Bit_data(%struct.TYPE_4__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ARM_DEBUG_STATE32_COUNT, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %44
  %56 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %56, i32* %5, align 4
  br label %106

57:                                               ; preds = %50
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @bzero(i64 %63, i32 4)
  br label %72

65:                                               ; preds = %57
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i32 @copy_debug_state32(i32* %68, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %62
  %73 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %73, i32* %5, align 4
  br label %106

74:                                               ; preds = %4
  %75 = load i64, i64* %8, align 8
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %12, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = call i32 @task_has_64Bit_data(%struct.TYPE_4__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ARM_DEBUG_STATE64_COUNT, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80, %74
  %86 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %86, i32* %5, align 4
  br label %106

87:                                               ; preds = %80
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @bzero(i64 %93, i32 4)
  br label %102

95:                                               ; preds = %87
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i32 @copy_debug_state64(i32* %98, i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %92
  %103 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %103, i32* %5, align 4
  br label %106

104:                                              ; preds = %4
  %105 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %102, %85, %72, %55, %42, %25
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @task_has_64Bit_data(%struct.TYPE_4__*) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @copy_legacy_debug_state(i32*, i32*, i32) #1

declare dso_local i32 @copy_debug_state32(i32*, i32*, i32) #1

declare dso_local i32 @copy_debug_state64(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
