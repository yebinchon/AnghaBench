; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_thread_set_wq_state32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_thread_set_wq_state32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.arm_saved_state* }
%struct.arm_saved_state = type { i32 }
%struct.arm_saved_state32 = type { i32 }

@PSR64_USER32_DEFAULT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_set_wq_state32(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.arm_saved_state*, align 8
  %7 = alloca %struct.arm_saved_state32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = call %struct.TYPE_9__* (...) @current_thread()
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = call i32 @thread_is_64bit_data(%struct.TYPE_9__* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.arm_saved_state*, %struct.arm_saved_state** %19, align 8
  store %struct.arm_saved_state* %20, %struct.arm_saved_state** %6, align 8
  %21 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %22 = call %struct.arm_saved_state32* @saved_state32(%struct.arm_saved_state* %21)
  store %struct.arm_saved_state32* %22, %struct.arm_saved_state32** %7, align 8
  %23 = load i64, i64* %4, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = icmp ne %struct.TYPE_9__* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = call i32 (...) @splsched()
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = call i32 @thread_lock(%struct.TYPE_9__* %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %35 = call i32 @thread_state32_to_saved_state(i32* %33, %struct.arm_saved_state* %34)
  %36 = load i32, i32* @PSR64_USER32_DEFAULT, align 4
  %37 = load %struct.arm_saved_state32*, %struct.arm_saved_state32** %7, align 8
  %38 = getelementptr inbounds %struct.arm_saved_state32, %struct.arm_saved_state32* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = icmp ne %struct.TYPE_9__* %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = call i32 @thread_unlock(%struct.TYPE_9__* %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @splx(i32 %45)
  br label %47

47:                                               ; preds = %42, %32
  %48 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_9__* @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_is_64bit_data(%struct.TYPE_9__*) #1

declare dso_local %struct.arm_saved_state32* @saved_state32(%struct.arm_saved_state*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @thread_state32_to_saved_state(i32*, %struct.arm_saved_state*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
