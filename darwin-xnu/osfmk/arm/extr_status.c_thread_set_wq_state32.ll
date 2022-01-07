; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status.c_thread_set_wq_state32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status.c_thread_set_wq_state32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.arm_saved_state }
%struct.arm_saved_state = type { i32 }

@PSR_USERDFLT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_set_wq_state32(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.arm_saved_state*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call %struct.TYPE_8__* (...) @current_thread()
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.arm_saved_state* %12, %struct.arm_saved_state** %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = icmp ne %struct.TYPE_8__* %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = call i32 (...) @splsched()
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = call i32 @thread_lock(%struct.TYPE_8__* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %25 = call i32 @thread_state32_to_saved_state(i32* %23, %struct.arm_saved_state* %24)
  %26 = load i32, i32* @PSR_USERDFLT, align 4
  %27 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %28 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = icmp ne %struct.TYPE_8__* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = call i32 @thread_unlock(%struct.TYPE_8__* %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @splx(i32 %35)
  br label %37

37:                                               ; preds = %32, %22
  %38 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_8__* @current_thread(...) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @thread_state32_to_saved_state(i32*, %struct.arm_saved_state*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
