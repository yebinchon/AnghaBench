; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/system/extr_missing_libc_functions.c__gettimeofday_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/system/extr_missing_libc_functions.c__gettimeofday_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.timeval = type { i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_gettimeofday_r(%struct._reent* %0, %struct.timeval* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store %struct.timeval* %1, %struct.timeval** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.timeval*, %struct.timeval** %6, align 8
  %13 = icmp eq %struct.timeval* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EFAULT, align 4
  store i32 %15, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = call i32 (...) @OSGetTime()
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ticks_to_sec(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @ticks_to_us(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %22, 1000000
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %21, %24
  store i64 %25, i64* %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 946684800
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.timeval*, %struct.timeval** %6, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.timeval*, %struct.timeval** %6, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %16, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @OSGetTime(...) #1

declare dso_local i32 @ticks_to_sec(i32) #1

declare dso_local i64 @ticks_to_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
