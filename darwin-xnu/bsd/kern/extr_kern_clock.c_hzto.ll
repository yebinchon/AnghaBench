; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_clock.c_hzto.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_clock.c_hzto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@tick = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hzto(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %6 = call i32 @microtime(%struct.timeval* %3)
  %7 = load %struct.timeval*, %struct.timeval** %2, align 8
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %9, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp sle i64 %13, 2146483
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.timeval*, %struct.timeval** %2, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %18, %20
  %22 = mul nsw i64 %21, 1000
  %23 = load %struct.timeval*, %struct.timeval** %2, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %25, %27
  %29 = sdiv i32 %28, 1000
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %22, %30
  %32 = load i32, i32* @tick, align 4
  %33 = sdiv i32 %32, 1000
  %34 = sext i32 %33 to i64
  %35 = sdiv i64 %31, %34
  store i64 %35, i64* %4, align 8
  br label %49

36:                                               ; preds = %1
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* @hz, align 4
  %39 = sdiv i32 2147483647, %38
  %40 = sext i32 %39 to i64
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @hz, align 4
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %43, %45
  store i64 %46, i64* %4, align 8
  br label %48

47:                                               ; preds = %36
  store i64 2147483647, i64* %4, align 8
  br label %48

48:                                               ; preds = %47, %42
  br label %49

49:                                               ; preds = %48, %15
  %50 = load i64, i64* %4, align 8
  %51 = trunc i64 %50 to i32
  ret i32 %51
}

declare dso_local i32 @microtime(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
