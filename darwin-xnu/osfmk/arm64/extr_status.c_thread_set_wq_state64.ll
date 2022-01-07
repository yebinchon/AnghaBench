; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_thread_set_wq_state64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_thread_set_wq_state64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.arm_saved_state* }
%struct.arm_saved_state = type { i32 }
%struct.arm_saved_state64 = type { i32 }

@PSR64_USER64_DEFAULT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_set_wq_state64(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.arm_saved_state*, align 8
  %7 = alloca %struct.arm_saved_state64*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = call %struct.TYPE_9__* (...) @current_thread()
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = call i32 @thread_is_64bit_data(%struct.TYPE_9__* %11)
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.arm_saved_state*, %struct.arm_saved_state** %16, align 8
  store %struct.arm_saved_state* %17, %struct.arm_saved_state** %6, align 8
  %18 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %19 = call %struct.arm_saved_state64* @saved_state64(%struct.arm_saved_state* %18)
  store %struct.arm_saved_state64* %19, %struct.arm_saved_state64** %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = icmp ne %struct.TYPE_9__* %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = call i32 (...) @splsched()
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = call i32 @thread_lock(%struct.TYPE_9__* %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %32 = call i32 @thread_state64_to_saved_state(i32* %30, %struct.arm_saved_state* %31)
  %33 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %34 = load i32, i32* @PSR64_USER64_DEFAULT, align 4
  %35 = call i32 @set_saved_state_cpsr(%struct.arm_saved_state* %33, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = icmp ne %struct.TYPE_9__* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = call i32 @thread_unlock(%struct.TYPE_9__* %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @splx(i32 %42)
  br label %44

44:                                               ; preds = %39, %29
  %45 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_9__* @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_is_64bit_data(%struct.TYPE_9__*) #1

declare dso_local %struct.arm_saved_state64* @saved_state64(%struct.arm_saved_state*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @thread_state64_to_saved_state(i32*, %struct.arm_saved_state*) #1

declare dso_local i32 @set_saved_state_cpsr(%struct.arm_saved_state*, i32) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
