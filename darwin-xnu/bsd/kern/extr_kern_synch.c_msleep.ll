; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_synch.c_msleep.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_synch.c_msleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msleep(i8* %0, i32* %1, i32 %2, i8* %3, %struct.timespec* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.timespec* %4, %struct.timespec** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.timespec*, %struct.timespec** %10, align 8
  %13 = icmp ne %struct.timespec* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %5
  %15 = load %struct.timespec*, %struct.timespec** %10, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.timespec*, %struct.timespec** %10, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19, %14
  %25 = load %struct.timespec*, %struct.timespec** %10, align 8
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @NSEC_PER_SEC, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = load %struct.timespec*, %struct.timespec** %10, align 8
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i32 @nanoseconds_to_absolutetime(i64 %35, i32* %11)
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @clock_absolutetime_interval_to_deadline(i32 %37, i32* %11)
  br label %39

39:                                               ; preds = %24, %19, %5
  %40 = load i8*, i8** %6, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @_sleep(i32 %41, i32 %42, i8* %43, i32 %44, i32 (i32)* null, i32* %45)
  ret i32 %46
}

declare dso_local i32 @nanoseconds_to_absolutetime(i64, i32*) #1

declare dso_local i32 @clock_absolutetime_interval_to_deadline(i32, i32*) #1

declare dso_local i32 @_sleep(i32, i32, i8*, i32, i32 (i32)*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
