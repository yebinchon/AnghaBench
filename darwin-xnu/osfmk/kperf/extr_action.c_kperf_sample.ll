; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.kperf_sample = type { i32 }
%struct.kperf_context = type { i32 }

@actionc = common dso_local global i32 0, align 4
@SAMPLE_SHUTDOWN = common dso_local global i32 0, align 4
@actionv = common dso_local global %struct.TYPE_2__* null, align 8
@SAMPLE_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kperf_sample(%struct.kperf_sample* %0, %struct.kperf_context* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kperf_sample*, align 8
  %7 = alloca %struct.kperf_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kperf_sample* %0, %struct.kperf_sample** %6, align 8
  store %struct.kperf_context* %1, %struct.kperf_context** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @actionc, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @SAMPLE_SHUTDOWN, align 4
  store i32 %19, i32* %5, align 4
  br label %59

20:                                               ; preds = %15
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @actionv, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sub i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.kperf_context*, %struct.kperf_context** %7, align 8
  %33 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @SAMPLE_CONTINUE, align 4
  store i32 %37, i32* %5, align 4
  br label %59

38:                                               ; preds = %30, %20
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @actionv, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sub i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.kperf_sample*, %struct.kperf_sample** %6, align 8
  %47 = load %struct.kperf_context*, %struct.kperf_context** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @actionv, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sub i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @kperf_sample_internal(%struct.kperf_sample* %46, %struct.kperf_context* %47, i32 %48, i32 %49, i32 %50, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %38, %36, %18
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @kperf_sample_internal(%struct.kperf_sample*, %struct.kperf_context*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
