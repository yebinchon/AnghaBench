; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_act_thread_catt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_act_thread_catt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_act_context = type { i32, i32 }

@ARM_THREAD_STATE = common dso_local global i32 0, align 4
@ARM_UNIFIED_THREAD_STATE_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@ARM_NEON_STATE = common dso_local global i32 0, align 4
@ARM_NEON_STATE64 = common dso_local global i32 0, align 4
@ARM_NEON_STATE64_COUNT = common dso_local global i32 0, align 4
@ARM_NEON_STATE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @act_thread_catt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.arm_act_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 (...) @current_thread()
  store i32 %6, i32* %5, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.arm_act_context*
  store %struct.arm_act_context* %8, %struct.arm_act_context** %3, align 8
  %9 = load %struct.arm_act_context*, %struct.arm_act_context** %3, align 8
  %10 = icmp eq %struct.arm_act_context* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %28

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ARM_THREAD_STATE, align 4
  %15 = load %struct.arm_act_context*, %struct.arm_act_context** %3, align 8
  %16 = getelementptr inbounds %struct.arm_act_context, %struct.arm_act_context* %15, i32 0, i32 1
  %17 = ptrtoint i32* %16 to i32
  %18 = load i32, i32* @ARM_UNIFIED_THREAD_STATE_COUNT, align 4
  %19 = call i64 @machine_thread_set_state(i32 %13, i32 %14, i32 %17, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @KERN_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %25

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %23
  %26 = load %struct.arm_act_context*, %struct.arm_act_context** %3, align 8
  %27 = call i32 @kfree(%struct.arm_act_context* %26, i32 8)
  br label %28

28:                                               ; preds = %25, %11
  ret void
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i64 @machine_thread_set_state(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.arm_act_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
