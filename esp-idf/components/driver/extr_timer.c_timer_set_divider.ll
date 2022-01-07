; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_timer.c_timer_set_divider.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_timer.c_timer_set_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@TIMER_GROUP_MAX = common dso_local global i64 0, align 8
@TIMER_GROUP_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@TIMER_MAX = common dso_local global i64 0, align 8
@TIMER_NUM_ERROR = common dso_local global i32 0, align 4
@DIVIDER_RANGE_ERROR = common dso_local global i32 0, align 4
@timer_spinlock = common dso_local global i32* null, align 8
@TG = common dso_local global %struct.TYPE_6__** null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_set_divider(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @TIMER_GROUP_MAX, align 8
  %10 = icmp ult i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* @TIMER_GROUP_NUM_ERROR, align 4
  %13 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %14 = call i32 @TIMER_CHECK(i32 %11, i32 %12, i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @TIMER_MAX, align 8
  %17 = icmp ult i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @TIMER_NUM_ERROR, align 4
  %20 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %21 = call i32 @TIMER_CHECK(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 65537
  br label %27

27:                                               ; preds = %24, %3
  %28 = phi i1 [ false, %3 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @DIVIDER_RANGE_ERROR, align 4
  %31 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %32 = call i32 @TIMER_CHECK(i32 %29, i32 %30, i32 %31)
  %33 = load i32*, i32** @timer_spinlock, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i32 @TIMER_ENTER_CRITICAL(i32* %35)
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @TG, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @TG, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @TG, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i64 %59, i64* %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @TG, align 8
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %70, i32* %80, align 8
  %81 = load i32*, i32** @timer_spinlock, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = call i32 @TIMER_EXIT_CRITICAL(i32* %83)
  %85 = load i32, i32* @ESP_OK, align 4
  ret i32 %85
}

declare dso_local i32 @TIMER_CHECK(i32, i32, i32) #1

declare dso_local i32 @TIMER_ENTER_CRITICAL(i32*) #1

declare dso_local i32 @TIMER_EXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
