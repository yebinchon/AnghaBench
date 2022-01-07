; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_select_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_select_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.select_nocancel_args = type { i64 }
%struct.timeval = type { i32, i32 }
%struct.user64_timeval = type { i32, i32 }
%struct.user32_timeval = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_nocancel(%struct.proc* %0, %struct.select_nocancel_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.select_nocancel_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca %struct.user64_timeval, align 4
  %12 = alloca %struct.user32_timeval, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.select_nocancel_args* %1, %struct.select_nocancel_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.select_nocancel_args*, %struct.select_nocancel_args** %6, align 8
  %14 = getelementptr inbounds %struct.select_nocancel_args, %struct.select_nocancel_args* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %3
  %18 = load %struct.proc*, %struct.proc** %5, align 8
  %19 = call i64 @IS_64BIT_PROCESS(%struct.proc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.select_nocancel_args*, %struct.select_nocancel_args** %6, align 8
  %23 = getelementptr inbounds %struct.select_nocancel_args, %struct.select_nocancel_args* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = ptrtoint %struct.user64_timeval* %11 to i32
  %26 = call i32 @copyin(i64 %24, i32 %25, i32 8)
  store i32 %26, i32* %9, align 4
  %27 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %11, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  br label %45

33:                                               ; preds = %17
  %34 = load %struct.select_nocancel_args*, %struct.select_nocancel_args** %6, align 8
  %35 = getelementptr inbounds %struct.select_nocancel_args, %struct.select_nocancel_args* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = ptrtoint %struct.user32_timeval* %12 to i32
  %38 = call i32 @copyin(i64 %36, i32 %37, i32 8)
  store i32 %38, i32* %9, align 4
  %39 = getelementptr inbounds %struct.user32_timeval, %struct.user32_timeval* %12, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.user32_timeval, %struct.user32_timeval* %12, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %33, %21
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %65

50:                                               ; preds = %45
  %51 = call i64 @itimerfix(%struct.timeval* %10)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %65

56:                                               ; preds = %50
  %57 = call i32 @tvtoabstime(%struct.timeval* %10)
  %58 = call i32 @clock_absolutetime_interval_to_deadline(i32 %57, i32* %8)
  br label %59

59:                                               ; preds = %56, %3
  %60 = load %struct.proc*, %struct.proc** %5, align 8
  %61 = load %struct.select_nocancel_args*, %struct.select_nocancel_args** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @select_internal(%struct.proc* %60, %struct.select_nocancel_args* %61, i32 %62, i32* %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %53, %48
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local i32 @copyin(i64, i32, i32) #1

declare dso_local i64 @itimerfix(%struct.timeval*) #1

declare dso_local i32 @clock_absolutetime_interval_to_deadline(i32, i32*) #1

declare dso_local i32 @tvtoabstime(%struct.timeval*) #1

declare dso_local i32 @select_internal(%struct.proc*, %struct.select_nocancel_args*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
