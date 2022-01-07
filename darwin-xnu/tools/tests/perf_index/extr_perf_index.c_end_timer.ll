; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_perf_index.c_end_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_perf_index.c_end_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_timer(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca %struct.timeval, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %4 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.timeval*, %struct.timeval** %2, align 8
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %6, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.timeval*, %struct.timeval** %2, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = load %struct.timeval*, %struct.timeval** %2, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.timeval*, %struct.timeval** %2, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = load %struct.timeval*, %struct.timeval** %2, align 8
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %47

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.timeval*, %struct.timeval** %2, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = sub nsw i64 %34, 1
  %36 = load %struct.timeval*, %struct.timeval** %2, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.timeval*, %struct.timeval** %2, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = add nsw i64 %43, 1000000
  %45 = load %struct.timeval*, %struct.timeval** %2, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
