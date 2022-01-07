; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_event_disable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_event_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }

@PCNT_UNIT_MAX = common dso_local global i64 0, align 8
@PCNT_UNIT_ERR_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@PCNT_EVT_MAX = common dso_local global i64 0, align 8
@PCNT_EVT_TYPE_ERR_STR = common dso_local global i32 0, align 4
@PCNT_EVT_L_LIM = common dso_local global i64 0, align 8
@PCNT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PCNT_EVT_H_LIM = common dso_local global i64 0, align 8
@PCNT_EVT_THRES_0 = common dso_local global i64 0, align 8
@PCNT_EVT_THRES_1 = common dso_local global i64 0, align 8
@PCNT_EVT_ZERO = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcnt_event_disable(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @PCNT_UNIT_MAX, align 8
  %7 = icmp ult i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @PCNT_UNIT_ERR_STR, align 4
  %10 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %11 = call i32 @PCNT_CHECK(i32 %8, i32 %9, i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @PCNT_EVT_MAX, align 8
  %14 = icmp slt i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @PCNT_EVT_TYPE_ERR_STR, align 4
  %17 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %18 = call i32 @PCNT_CHECK(i32 %15, i32 %16, i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @PCNT_EVT_L_LIM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  br label %72

28:                                               ; preds = %2
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @PCNT_EVT_H_LIM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  br label %71

38:                                               ; preds = %28
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @PCNT_EVT_THRES_0, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  br label %70

48:                                               ; preds = %38
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @PCNT_EVT_THRES_1, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %69

58:                                               ; preds = %48
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @PCNT_EVT_ZERO, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %58
  br label %69

69:                                               ; preds = %68, %52
  br label %70

70:                                               ; preds = %69, %42
  br label %71

71:                                               ; preds = %70, %32
  br label %72

72:                                               ; preds = %71, %22
  %73 = load i32, i32* @ESP_OK, align 4
  ret i32 %73
}

declare dso_local i32 @PCNT_CHECK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
