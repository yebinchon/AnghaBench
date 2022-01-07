; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock_native.c_rtc_timer_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock_native.c_rtc_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUID_FEATURE_TSCTMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TSC_deadline_timer\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"TSC Deadline Timer supported %s enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"but not\00", align 1
@rtc_timer_tsc_deadline = common dso_local global i32 0, align 4
@rtc_timer = common dso_local global i32* null, align 8
@UINT64_MAX = common dso_local global i32 0, align 4
@rtc_decrementer_max = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@rtc_decrementer_min = common dso_local global i32 0, align 4
@busFCvtt2n = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"maxDec: %lld\0A\00", align 1
@rtclock_intr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_timer_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @cpuid_features()
  %3 = load i32, i32* @CPUID_FEATURE_TSCTMR, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  %7 = call i32 @PE_parse_boot_argn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %1, i32 4)
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %12 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %6, %0
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  store i32* @rtc_timer_tsc_deadline, i32** @rtc_timer, align 8
  %17 = load i32, i32* @UINT64_MAX, align 4
  store i32 %17, i32* @rtc_decrementer_max, align 4
  %18 = load i32, i32* @NSEC_PER_USEC, align 4
  %19 = mul nsw i32 1, %18
  store i32 %19, i32* @rtc_decrementer_min, align 4
  br label %27

20:                                               ; preds = %13
  %21 = load i32, i32* @busFCvtt2n, align 4
  %22 = call i32 @tmrCvt(i32 2147483647, i32 %21)
  store i32 %22, i32* @rtc_decrementer_max, align 4
  %23 = load i32, i32* @rtc_decrementer_max, align 4
  %24 = call i32 @kprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @NSEC_PER_USEC, align 4
  %26 = mul nsw i32 1, %25
  store i32 %26, i32* @rtc_decrementer_min, align 4
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i64, i64* @rtclock_intr, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @lapic_set_timer_func(i32 %29)
  ret void
}

declare dso_local i32 @cpuid_features(...) #1

declare dso_local i32 @PE_parse_boot_argn(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @tmrCvt(i32, i32) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i32 @lapic_set_timer_func(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
