; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_runtime_file.c_runtime_log_get_last_played_time.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_runtime_file.c_runtime_log_get_last_played_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @runtime_log_get_last_played_time(%struct.TYPE_5__* %0, %struct.tm* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.tm*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.tm*, %struct.tm** %4, align 8
  %9 = icmp ne %struct.tm* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %2
  br label %60

11:                                               ; preds = %7
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = sub nsw i32 %16, 1900
  %18 = load %struct.tm*, %struct.tm** %4, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = sub nsw i32 %24, 1
  %26 = load %struct.tm*, %struct.tm** %4, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.tm*, %struct.tm** %4, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.tm*, %struct.tm** %4, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.tm*, %struct.tm** %4, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.tm*, %struct.tm** %4, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.tm*, %struct.tm** %4, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 6
  store i32 -1, i32* %57, align 4
  %58 = load %struct.tm*, %struct.tm** %4, align 8
  %59 = call i32 @mktime(%struct.tm* %58)
  br label %60

60:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
