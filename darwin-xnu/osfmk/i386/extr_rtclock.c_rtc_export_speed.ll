; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock.c_rtc_export_speed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock.c_rtc_export_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@pal_rtc_nanotime_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"Slow TSC, rtc_nanotime.shift == %d\0A\00", align 1
@UI_CPUFREQ_ROUNDING_FACTOR = common dso_local global i32 0, align 4
@gPEClockFrequencyInfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"[RTCLOCK] frequency %llu (%llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtc_export_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_export_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_4__* @pal_rtc_nanotime_info, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @UI_CPUFREQ_ROUNDING_FACTOR, align 4
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %15, %17
  %19 = load i32, i32* @UI_CPUFREQ_ROUNDING_FACTOR, align 4
  %20 = sdiv i32 %18, %19
  %21 = load i32, i32* @UI_CPUFREQ_ROUNDING_FACTOR, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp uge i64 %24, 4294967296
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gPEClockFrequencyInfo, i32 0, i32 0), align 4
  br label %31

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gPEClockFrequencyInfo, i32 0, i32 0), align 4
  br label %31

31:                                               ; preds = %27, %26
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gPEClockFrequencyInfo, i32 0, i32 1), align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @kprintf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
