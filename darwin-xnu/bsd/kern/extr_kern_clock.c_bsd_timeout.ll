; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_clock.c_bsd_timeout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_clock.c_bsd_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsd_timeout(i64 %0, i8* %1, %struct.timespec* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.timespec*, %struct.timespec** %6, align 8
  %9 = icmp ne %struct.timespec* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load %struct.timespec*, %struct.timespec** %6, align 8
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.timespec*, %struct.timespec** %6, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15, %10
  %21 = load %struct.timespec*, %struct.timespec** %6, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @NSEC_PER_SEC, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load %struct.timespec*, %struct.timespec** %6, align 8
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @nanoseconds_to_absolutetime(i64 %31, i32* %7)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @clock_absolutetime_interval_to_deadline(i32 %33, i32* %7)
  br label %35

35:                                               ; preds = %20, %15, %3
  %36 = load i64, i64* %4, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @thread_call_func_delayed(i32 %37, i8* %38, i32 %39)
  ret void
}

declare dso_local i32 @nanoseconds_to_absolutetime(i64, i32*) #1

declare dso_local i32 @clock_absolutetime_interval_to_deadline(i32, i32*) #1

declare dso_local i32 @thread_call_func_delayed(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
