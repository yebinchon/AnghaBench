; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/AT386/extr_model_dep.c_print_launchd_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/AT386/extr_model_dep.c_print_launchd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pbtcnt = common dso_local global i64 0, align 8
@pbtcpu = common dso_local global i32 0, align 4
@pbtlock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PBT_TIMEOUT_CYCLES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_launchd_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = call i32 (...) @current_task()
  store i32 %6, i32* %1, align 4
  %7 = call i32 (...) @current_thread()
  store i32 %7, i32* %2, align 4
  store i64* @pbtcnt, i64** %3, align 8
  %8 = call i32 (...) @cpu_number()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @pbtcpu, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = call i32 @hw_atomic_add(i64* @pbtcnt, i32 1)
  %14 = call i32 @hw_lock_to(i32* @pbtlock, i32 -1)
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* @pbtcpu, align 4
  br label %16

16:                                               ; preds = %12, %0
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @print_uuid_info(i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @print_thread_num_that_crashed(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @print_threads_registers(i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @print_tasks_user_threads(i32 %23)
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @panic_display_system_configuration(i32 %25)
  %27 = call i32 @hw_lock_unlock(i32* @pbtlock)
  %28 = call i32 @hw_atomic_sub(i64* @pbtcnt, i32 1)
  %29 = call i64 (...) @rdtsc64()
  %30 = load i64, i64* @PBT_TIMEOUT_CYCLES, align 8
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %42, %16
  %33 = load i64*, i64** %3, align 8
  %34 = load volatile i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i64 (...) @rdtsc64()
  %38 = load i64, i64* %4, align 8
  %39 = icmp slt i64 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  br label %32

43:                                               ; preds = %40
  ret void
}

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @hw_atomic_add(i64*, i32) #1

declare dso_local i32 @hw_lock_to(i32*, i32) #1

declare dso_local i32 @print_uuid_info(i32) #1

declare dso_local i32 @print_thread_num_that_crashed(i32) #1

declare dso_local i32 @print_threads_registers(i32) #1

declare dso_local i32 @print_tasks_user_threads(i32) #1

declare dso_local i32 @panic_display_system_configuration(i32) #1

declare dso_local i32 @hw_lock_unlock(i32*) #1

declare dso_local i32 @hw_atomic_sub(i64*, i32) #1

declare dso_local i64 @rdtsc64(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
