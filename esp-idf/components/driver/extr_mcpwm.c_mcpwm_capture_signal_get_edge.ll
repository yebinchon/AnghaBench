; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_capture_signal_get_edge.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_capture_signal_get_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@MCPWM_UNIT_MAX = common dso_local global i64 0, align 8
@MCPWM_UNIT_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@MCPWM_SELECT_CAP0 = common dso_local global i64 0, align 8
@MCPWM = common dso_local global %struct.TYPE_4__** null, align 8
@MCPWM_SELECT_CAP1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcpwm_capture_signal_get_edge(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @MCPWM_UNIT_MAX, align 8
  %8 = icmp ult i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @MCPWM_UNIT_NUM_ERROR, align 4
  %11 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %12 = call i32 @MCPWM_CHECK(i32 %9, i32 %10, i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MCPWM_SELECT_CAP0, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @MCPWM, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %47

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @MCPWM_SELECT_CAP1, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @MCPWM, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %47

38:                                               ; preds = %25
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @MCPWM, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %38, %29, %16
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i32 @MCPWM_CHECK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
