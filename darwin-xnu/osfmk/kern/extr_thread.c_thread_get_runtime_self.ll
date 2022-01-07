; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_get_runtime_self.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_get_runtime_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@thread_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thread_get_runtime_self() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = call %struct.TYPE_3__* (...) @current_thread()
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  %6 = load i32, i32* @FALSE, align 4
  %7 = call i32 @ml_set_interrupts_enabled(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = call i32* (...) @current_processor()
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @thread_timer, align 4
  %11 = call i32 @PROCESSOR_DATA(i32* %9, i32 %10)
  %12 = call i32 (...) @mach_absolute_time()
  %13 = call i32 @timer_update(i32 %11, i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = call i64 @timer_grab(i32* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i64 @timer_grab(i32* %18)
  %20 = add nsw i64 %16, %19
  store i64 %20, i64* %2, align 8
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @ml_set_interrupts_enabled(i32 %21)
  %23 = load i64, i64* %2, align 8
  ret i64 %23
}

declare dso_local %struct.TYPE_3__* @current_thread(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32* @current_processor(...) #1

declare dso_local i32 @timer_update(i32, i32) #1

declare dso_local i32 @PROCESSOR_DATA(i32*, i32) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i64 @timer_grab(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
