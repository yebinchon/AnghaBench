; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdd.c_cdd_context_load.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdd.c_cdd_context_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@cdd = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdd_context_load(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @load_param(i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 1), i32 8)
  %6 = call i32 @load_param(i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 2), i32 8)
  %7 = call i32 @load_param(i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 0), i32 8)
  %8 = call i32 @load_param(i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 3), i32 8)
  %9 = call i32 @load_param(i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 4), i32 8)
  %10 = call i32 @load_param(i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 5), i32 8)
  %11 = call i32 @load_param(i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 6), i32 8)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 3), align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 8, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 8, i32 0), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 0), align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 0), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 8, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 8, i32 0), align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 7), align 8
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i32 @pm_seek(i64 %40, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %30
  br label %51

47:                                               ; preds = %27
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cdd, i32 0, i32 0), align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @cdd_change_track(i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @load_param(i64*, i32) #1

declare dso_local i32 @pm_seek(i64, i32, i32) #1

declare dso_local i32 @cdd_change_track(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
