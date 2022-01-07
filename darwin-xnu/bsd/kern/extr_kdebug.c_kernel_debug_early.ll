; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_early.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i32, i32 }

@kd_early_done = common dso_local global i64 0, align 8
@kd_early_index = common dso_local global i64 0, align 8
@KD_EARLY_BUFFER_NBUFS = common dso_local global i64 0, align 8
@kd_early_overflow = common dso_local global i32 0, align 4
@master_cpu = common dso_local global i64 0, align 8
@kd_early_buffer = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_debug_early(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* @kd_early_done, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %14, i64 %15, i64 %16, i64 %17, i64 %18, i32 0)
  br label %69

20:                                               ; preds = %5
  %21 = load i64, i64* @kd_early_index, align 8
  %22 = load i64, i64* @KD_EARLY_BUFFER_NBUFS, align 8
  %23 = icmp uge i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* @kd_early_overflow, align 4
  %25 = load i32, i32* @kd_early_overflow, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = call i64 (...) @cpu_number()
  %29 = load i64, i64* @master_cpu, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %20
  br label %69

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kd_early_buffer, align 8
  %35 = load i64, i64* @kd_early_index, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  store i32 %33, i32* %37, align 4
  %38 = call i32 (...) @mach_absolute_time()
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kd_early_buffer, align 8
  %40 = load i64, i64* @kd_early_index, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  store i32 %38, i32* %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kd_early_buffer, align 8
  %45 = load i64, i64* @kd_early_index, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %43, i64* %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kd_early_buffer, align 8
  %50 = load i64, i64* @kd_early_index, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i64 %48, i64* %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kd_early_buffer, align 8
  %55 = load i64, i64* @kd_early_index, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i64 %53, i64* %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kd_early_buffer, align 8
  %60 = load i64, i64* @kd_early_index, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i64 %58, i64* %62, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kd_early_buffer, align 8
  %64 = load i64, i64* @kd_early_index, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* @kd_early_index, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* @kd_early_index, align 8
  br label %69

69:                                               ; preds = %32, %31, %13
  ret void
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i64, i64, i64, i64, i32) #1

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @mach_absolute_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
