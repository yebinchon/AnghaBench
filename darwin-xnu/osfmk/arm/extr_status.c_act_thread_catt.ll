; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status.c_act_thread_catt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status.c_act_thread_catt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_act_context = type { i32, i32 }

@ARM_THREAD_STATE = common dso_local global i32 0, align 4
@ARM_THREAD_STATE_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@ARM_VFP_STATE = common dso_local global i32 0, align 4
@ARM_VFP_STATE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @act_thread_catt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.arm_act_context*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.arm_act_context*
  store %struct.arm_act_context* %6, %struct.arm_act_context** %3, align 8
  %7 = load %struct.arm_act_context*, %struct.arm_act_context** %3, align 8
  %8 = icmp eq %struct.arm_act_context* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = call i32 (...) @current_thread()
  %12 = load i32, i32* @ARM_THREAD_STATE, align 4
  %13 = load %struct.arm_act_context*, %struct.arm_act_context** %3, align 8
  %14 = getelementptr inbounds %struct.arm_act_context, %struct.arm_act_context* %13, i32 0, i32 1
  %15 = ptrtoint i32* %14 to i32
  %16 = load i32, i32* @ARM_THREAD_STATE_COUNT, align 4
  %17 = call i64 @machine_thread_set_state(i32 %11, i32 %12, i32 %15, i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @KERN_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %23

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.arm_act_context*, %struct.arm_act_context** %3, align 8
  %25 = call i32 @kfree(%struct.arm_act_context* %24, i32 8)
  br label %26

26:                                               ; preds = %23, %9
  ret void
}

declare dso_local i64 @machine_thread_set_state(i32, i32, i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @kfree(%struct.arm_act_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
