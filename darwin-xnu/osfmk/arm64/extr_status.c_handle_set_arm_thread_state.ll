; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_handle_set_arm_thread_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_handle_set_arm_thread_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_UNIFIED_THREAD_STATE_COUNT = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_set_arm_thread_state(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @ARM_UNIFIED_THREAD_STATE_COUNT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @is_saved_state32(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %17, i32* %4, align 4
  br label %37

18:                                               ; preds = %12
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @handle_set_arm32_thread_state(i64 %19, i64 %20, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @is_saved_state32(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @const_thread_state32(i32* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @thread_state32_to_saved_state(i32 %33, i32* %34)
  %36 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %29, %18, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @is_saved_state32(i32*) #1

declare dso_local i32 @handle_set_arm32_thread_state(i64, i64, i32*) #1

declare dso_local i32 @thread_state32_to_saved_state(i32, i32*) #1

declare dso_local i32 @const_thread_state32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
