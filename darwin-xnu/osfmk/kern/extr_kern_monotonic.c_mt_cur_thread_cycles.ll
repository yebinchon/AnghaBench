; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_monotonic.c_mt_cur_thread_cycles.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_monotonic.c_mt_cur_thread_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@mt_core_supported = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MT_CORE_CYCLES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt_cur_thread_cycles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call %struct.TYPE_6__* (...) @current_thread()
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %2, align 8
  %6 = load i32, i32* @mt_core_supported, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %24

9:                                                ; preds = %0
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i32 @ml_set_interrupts_enabled(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call i32 @mt_update_thread(%struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @MT_CORE_CYCLES, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ml_set_interrupts_enabled(i32 %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %9, %8
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local %struct.TYPE_6__* @current_thread(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @mt_update_thread(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
