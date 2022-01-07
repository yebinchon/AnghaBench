; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock.c_rtc_set_timescale.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock.c_rtc_set_timescale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@pal_rtc_nanotime_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SLOW_TSC_THRESHOLD = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@tsc_rebase_abs_time = common dso_local global i64 0, align 8
@tsc_at_boot = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rtc_set_timescale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_set_timescale(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_4__* @pal_rtc_nanotime_info, %struct.TYPE_4__** %3, align 8
  store i8* null, i8** %4, align 8
  br label %5

5:                                                ; preds = %9, %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @SLOW_TSC_THRESHOLD, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = shl i32 %12, 1
  store i32 %13, i32* %2, align 4
  br label %5

14:                                               ; preds = %5
  %15 = load i64, i64* @NSEC_PER_SEC, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 32
  %18 = load i32, i32* %2, align 4
  %19 = sdiv i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* @tsc_rebase_abs_time, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %14
  %30 = call i64 (...) @rdtsc64()
  %31 = load i64, i64* @tsc_at_boot, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = call i64 @_rtc_tsc_to_nanoseconds(i64 %32, %struct.TYPE_4__* %33)
  store i64 %34, i64* @tsc_rebase_abs_time, align 8
  br label %35

35:                                               ; preds = %29, %14
  %36 = call i32 @rtc_nanotime_init(i32 0)
  ret void
}

declare dso_local i64 @_rtc_tsc_to_nanoseconds(i64, %struct.TYPE_4__*) #1

declare dso_local i64 @rdtsc64(...) #1

declare dso_local i32 @rtc_nanotime_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
