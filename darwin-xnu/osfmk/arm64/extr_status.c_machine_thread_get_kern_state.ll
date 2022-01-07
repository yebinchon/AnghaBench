; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_machine_thread_get_kern_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_machine_thread_get_kern_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_thread_get_kern_state(i64 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 (...) @current_thread()
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = call %struct.TYPE_2__* (...) @getCpuDatap()
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %4
  %21 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %21, i32* %5, align 4
  br label %52

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %48 [
    i32 130, label %24
    i32 129, label %36
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call %struct.TYPE_2__* (...) @getCpuDatap()
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @handle_get_arm_thread_state(i32 %25, i32* %26, i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %52

35:                                               ; preds = %24
  br label %50

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call %struct.TYPE_2__* (...) @getCpuDatap()
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @handle_get_arm32_thread_state(i32 %37, i32* %38, i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %52

47:                                               ; preds = %36
  br label %50

48:                                               ; preds = %22
  %49 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %49, i32* %5, align 4
  br label %52

50:                                               ; preds = %47, %35
  %51 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %48, %45, %33, %20
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @current_thread(...) #1

declare dso_local %struct.TYPE_2__* @getCpuDatap(...) #1

declare dso_local i32 @handle_get_arm_thread_state(i32, i32*, i32*) #1

declare dso_local i32 @handle_get_arm32_thread_state(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
