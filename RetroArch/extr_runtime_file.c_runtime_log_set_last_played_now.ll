; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_runtime_file.c_runtime_log_set_last_played_now.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_runtime_file.c_runtime_log_set_last_played_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to get current time.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @runtime_log_set_last_played_now(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %60

8:                                                ; preds = %1
  %9 = call i32 @time(i32* %3)
  %10 = call %struct.tm* @localtime(i32* %3)
  store %struct.tm* %10, %struct.tm** %4, align 8
  %11 = load %struct.tm*, %struct.tm** %4, align 8
  %12 = icmp ne %struct.tm* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %60

15:                                               ; preds = %8
  %16 = load %struct.tm*, %struct.tm** %4, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, 1900
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.tm*, %struct.tm** %4, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = add i32 %27, 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.tm*, %struct.tm** %4, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load %struct.tm*, %struct.tm** %4, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load %struct.tm*, %struct.tm** %4, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 4
  %53 = load %struct.tm*, %struct.tm** %4, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %15, %13, %7
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
