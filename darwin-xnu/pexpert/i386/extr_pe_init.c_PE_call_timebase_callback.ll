; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_init.c_PE_call_timebase_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_init.c_PE_call_timebase_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.timebase_freq_t = type { i64, i64 }

@gPEClockFrequencyInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PE_call_timebase_callback() #0 {
  %1 = alloca %struct.timebase_freq_t, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 0), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 1), align 8
  %7 = mul i64 %5, %6
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 2), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 3), align 8
  %10 = mul i64 %8, %9
  store i64 %10, i64* %3, align 8
  store i64 2, i64* %4, align 8
  br label %11

11:                                               ; preds = %28, %25, %0
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %4, align 8
  %18 = urem i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = urem i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %15
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %11

28:                                               ; preds = %20
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %2, align 8
  %31 = udiv i64 %30, %29
  store i64 %31, i64* %2, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = udiv i64 %33, %32
  store i64 %34, i64* %3, align 8
  br label %11

35:                                               ; preds = %11
  %36 = load i64, i64* %2, align 8
  %37 = getelementptr inbounds %struct.timebase_freq_t, %struct.timebase_freq_t* %1, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.timebase_freq_t, %struct.timebase_freq_t* %1, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  br i1 true, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @gTimebaseCallback(%struct.timebase_freq_t* %1)
  br label %42

42:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @gTimebaseCallback(%struct.timebase_freq_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
