; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_pselect_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_pselect_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.pselect_nocancel_args = type { i64, i64 }
%struct.uthread = type { i32, i32, i32 }
%struct.timespec = type { i32, i32 }
%struct.user64_timespec = type { i32, i32 }
%struct.user32_timespec = type { i32, i32 }
%struct.select_nocancel_args = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i64 0, align 8
@UT_SAS_OLDMASK = common dso_local global i32 0, align 4
@sigcantmask = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pselect_nocancel(%struct.proc* %0, %struct.pselect_nocancel_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.pselect_nocancel_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uthread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca %struct.user64_timespec, align 4
  %13 = alloca %struct.user32_timespec, align 4
  %14 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.pselect_nocancel_args* %1, %struct.pselect_nocancel_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.pselect_nocancel_args*, %struct.pselect_nocancel_args** %6, align 8
  %16 = getelementptr inbounds %struct.pselect_nocancel_args, %struct.pselect_nocancel_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %3
  %20 = load %struct.proc*, %struct.proc** %5, align 8
  %21 = call i64 @IS_64BIT_PROCESS(%struct.proc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.pselect_nocancel_args*, %struct.pselect_nocancel_args** %6, align 8
  %25 = getelementptr inbounds %struct.pselect_nocancel_args, %struct.pselect_nocancel_args* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = bitcast %struct.user64_timespec* %12 to i32*
  %28 = call i32 @copyin(i64 %26, i32* %27, i32 8)
  store i32 %28, i32* %8, align 4
  %29 = getelementptr inbounds %struct.user64_timespec, %struct.user64_timespec* %12, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.user64_timespec, %struct.user64_timespec* %12, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  br label %47

35:                                               ; preds = %19
  %36 = load %struct.pselect_nocancel_args*, %struct.pselect_nocancel_args** %6, align 8
  %37 = getelementptr inbounds %struct.pselect_nocancel_args, %struct.pselect_nocancel_args* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = bitcast %struct.user32_timespec* %13 to i32*
  %40 = call i32 @copyin(i64 %38, i32* %39, i32 8)
  store i32 %40, i32* %8, align 4
  %41 = getelementptr inbounds %struct.user32_timespec, %struct.user32_timespec* %13, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.user32_timespec, %struct.user32_timespec* %13, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %35, %23
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %127

52:                                               ; preds = %47
  %53 = call i32 @timespec_is_valid(%struct.timespec* %11)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %4, align 4
  br label %127

57:                                               ; preds = %52
  %58 = call i32 @tstoabstime(%struct.timespec* %11)
  %59 = call i32 @clock_absolutetime_interval_to_deadline(i32 %58, i32* %10)
  br label %60

60:                                               ; preds = %57, %3
  %61 = call i32 (...) @current_thread()
  %62 = call %struct.uthread* @get_bsdthread_info(i32 %61)
  store %struct.uthread* %62, %struct.uthread** %9, align 8
  %63 = load %struct.pselect_nocancel_args*, %struct.pselect_nocancel_args** %6, align 8
  %64 = getelementptr inbounds %struct.pselect_nocancel_args, %struct.pselect_nocancel_args* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @USER_ADDR_NULL, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %60
  %69 = load %struct.pselect_nocancel_args*, %struct.pselect_nocancel_args** %6, align 8
  %70 = getelementptr inbounds %struct.pselect_nocancel_args, %struct.pselect_nocancel_args* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @copyin(i64 %71, i32* %14, i32 4)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %127

77:                                               ; preds = %68
  %78 = load %struct.uthread*, %struct.uthread** %9, align 8
  %79 = getelementptr inbounds %struct.uthread, %struct.uthread* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.uthread*, %struct.uthread** %9, align 8
  %82 = getelementptr inbounds %struct.uthread, %struct.uthread* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @UT_SAS_OLDMASK, align 4
  %84 = load %struct.uthread*, %struct.uthread** %9, align 8
  %85 = getelementptr inbounds %struct.uthread, %struct.uthread* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @sigcantmask, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load %struct.uthread*, %struct.uthread** %9, align 8
  %93 = getelementptr inbounds %struct.uthread, %struct.uthread* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %77, %60
  %95 = load %struct.proc*, %struct.proc** %5, align 8
  %96 = load %struct.pselect_nocancel_args*, %struct.pselect_nocancel_args** %6, align 8
  %97 = bitcast %struct.pselect_nocancel_args* %96 to %struct.select_nocancel_args*
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @select_internal(%struct.proc* %95, %struct.select_nocancel_args* %97, i32 %98, i32* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @EINTR, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %94
  %105 = load %struct.uthread*, %struct.uthread** %9, align 8
  %106 = getelementptr inbounds %struct.uthread, %struct.uthread* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @UT_SAS_OLDMASK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %104
  %112 = load %struct.uthread*, %struct.uthread** %9, align 8
  %113 = getelementptr inbounds %struct.uthread, %struct.uthread* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.uthread*, %struct.uthread** %9, align 8
  %116 = getelementptr inbounds %struct.uthread, %struct.uthread* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.uthread*, %struct.uthread** %9, align 8
  %118 = getelementptr inbounds %struct.uthread, %struct.uthread* %117, i32 0, i32 0
  store i32 0, i32* %118, align 4
  %119 = load i32, i32* @UT_SAS_OLDMASK, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.uthread*, %struct.uthread** %9, align 8
  %122 = getelementptr inbounds %struct.uthread, %struct.uthread* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %111, %104, %94
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %75, %55, %50
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local i32 @copyin(i64, i32*, i32) #1

declare dso_local i32 @timespec_is_valid(%struct.timespec*) #1

declare dso_local i32 @clock_absolutetime_interval_to_deadline(i32, i32*) #1

declare dso_local i32 @tstoabstime(%struct.timespec*) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @select_internal(%struct.proc*, %struct.select_nocancel_args*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
