; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status.c_machine_thread_get_kern_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status.c_machine_thread_get_kern_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_thread_state = type { i32, i32*, i32, i32, i32 }
%struct.arm_saved_state = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.arm_saved_state* }

@KERN_FAILURE = common dso_local global i32 0, align 4
@ARM_THREAD_STATE_COUNT = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_thread_get_kern_state(i64 %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.arm_thread_state*, align 8
  %11 = alloca %struct.arm_saved_state*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 (...) @current_thread()
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = call %struct.TYPE_2__* (...) @getCpuDatap()
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.arm_saved_state*, %struct.arm_saved_state** %18, align 8
  %20 = icmp eq %struct.arm_saved_state* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %4
  %22 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %22, i32* %5, align 4
  br label %85

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %81 [
    i32 128, label %25
  ]

25:                                               ; preds = %23
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ARM_THREAD_STATE_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %31, i32* %5, align 4
  br label %85

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = inttoptr i64 %33 to %struct.arm_thread_state*
  store %struct.arm_thread_state* %34, %struct.arm_thread_state** %10, align 8
  %35 = call %struct.TYPE_2__* (...) @getCpuDatap()
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.arm_saved_state*, %struct.arm_saved_state** %36, align 8
  store %struct.arm_saved_state* %37, %struct.arm_saved_state** %11, align 8
  %38 = load %struct.arm_saved_state*, %struct.arm_saved_state** %11, align 8
  %39 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.arm_thread_state*, %struct.arm_thread_state** %10, align 8
  %42 = getelementptr inbounds %struct.arm_thread_state, %struct.arm_thread_state* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.arm_saved_state*, %struct.arm_saved_state** %11, align 8
  %44 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.arm_thread_state*, %struct.arm_thread_state** %10, align 8
  %47 = getelementptr inbounds %struct.arm_thread_state, %struct.arm_thread_state* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.arm_saved_state*, %struct.arm_saved_state** %11, align 8
  %49 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.arm_thread_state*, %struct.arm_thread_state** %10, align 8
  %52 = getelementptr inbounds %struct.arm_thread_state, %struct.arm_thread_state* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.arm_saved_state*, %struct.arm_saved_state** %11, align 8
  %54 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.arm_thread_state*, %struct.arm_thread_state** %10, align 8
  %57 = getelementptr inbounds %struct.arm_thread_state, %struct.arm_thread_state* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %75, %32
  %59 = load i32, i32* %12, align 4
  %60 = icmp ult i32 %59, 13
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load %struct.arm_saved_state*, %struct.arm_saved_state** %11, align 8
  %63 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.arm_thread_state*, %struct.arm_thread_state** %10, align 8
  %70 = getelementptr inbounds %struct.arm_thread_state, %struct.arm_thread_state* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %12, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %58

78:                                               ; preds = %58
  %79 = load i32, i32* @ARM_THREAD_STATE_COUNT, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  br label %83

81:                                               ; preds = %23
  %82 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %82, i32* %5, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %81, %30, %21
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @current_thread(...) #1

declare dso_local %struct.TYPE_2__* @getCpuDatap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
