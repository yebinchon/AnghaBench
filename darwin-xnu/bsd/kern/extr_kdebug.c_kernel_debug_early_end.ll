; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_early_end.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_early_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@master_cpu = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"kernel_debug_early_end() not call on boot processor\00", align 1
@kd_ctrl_page = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TRACE_TIMESTAMPS = common dso_local global i32 0, align 4
@tsc_rebase_abs_time = common dso_local global i32 0, align 4
@tsc_at_boot = common dso_local global i32 0, align 4
@kd_early_index = common dso_local global i32 0, align 4
@kd_early_buffer = common dso_local global %struct.TYPE_3__* null, align 8
@kd_early_overflow = common dso_local global i64 0, align 8
@TRACE_LOST_EVENTS = common dso_local global i32 0, align 4
@kd_early_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"early trace done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kernel_debug_early_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_debug_early_end() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @cpu_number()
  %3 = load i64, i64* @master_cpu, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kd_ctrl_page, i32 0, i32 0), align 8
  %8 = load i32, i32* @TRACE_TIMESTAMPS, align 4
  %9 = load i32, i32* @tsc_rebase_abs_time, align 4
  %10 = ashr i32 %9, 32
  %11 = load i32, i32* @tsc_rebase_abs_time, align 4
  %12 = load i32, i32* @tsc_at_boot, align 4
  %13 = call i32 @kernel_debug_enter(i32 0, i32 %8, i32 0, i32 %10, i32 %11, i32 %12, i32 0, i32 0)
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %56, %7
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @kd_early_index, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kd_early_buffer, align 8
  %20 = load i32, i32* %1, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kd_early_buffer, align 8
  %26 = load i32, i32* %1, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kd_early_buffer, align 8
  %32 = load i32, i32* %1, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kd_early_buffer, align 8
  %38 = load i32, i32* %1, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kd_early_buffer, align 8
  %44 = load i32, i32* %1, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kd_early_buffer, align 8
  %50 = load i32, i32* %1, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @kernel_debug_enter(i32 0, i32 %24, i32 %30, i32 %36, i32 %42, i32 %48, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %18
  %57 = load i32, i32* %1, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %14

59:                                               ; preds = %14
  %60 = load i64, i64* @kd_early_overflow, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @TRACE_LOST_EVENTS, align 4
  %64 = call i32 @KDBG_RELEASE(i32 %63, i32 1)
  br label %65

65:                                               ; preds = %62, %59
  store i32 1, i32* @kd_early_done, align 4
  %66 = call i32 @kernel_debug_string_early(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @kernel_debug_enter(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @KDBG_RELEASE(i32, i32) #1

declare dso_local i32 @kernel_debug_string_early(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
