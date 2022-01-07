; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_get_event_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_get_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@PCNT_UNIT_MAX = common dso_local global i64 0, align 8
@PCNT_UNIT_ERR_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@PCNT_EVT_MAX = common dso_local global i64 0, align 8
@PCNT_EVT_TYPE_ERR_STR = common dso_local global i32 0, align 4
@PCNT_ADDRESS_ERR_STR = common dso_local global i32 0, align 4
@PCNT_EVT_L_LIM = common dso_local global i64 0, align 8
@PCNT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PCNT_EVT_H_LIM = common dso_local global i64 0, align 8
@PCNT_EVT_THRES_0 = common dso_local global i64 0, align 8
@PCNT_EVT_THRES_1 = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcnt_get_event_value(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @PCNT_UNIT_MAX, align 8
  %9 = icmp ult i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @PCNT_UNIT_ERR_STR, align 4
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %13 = call i32 @PCNT_CHECK(i32 %10, i32 %11, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @PCNT_EVT_MAX, align 8
  %16 = icmp slt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @PCNT_EVT_TYPE_ERR_STR, align 4
  %19 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %20 = call i32 @PCNT_CHECK(i32 %17, i32 %18, i32 %19)
  %21 = load i64*, i64** %6, align 8
  %22 = icmp ne i64* %21, null
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @PCNT_ADDRESS_ERR_STR, align 4
  %25 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %26 = call i32 @PCNT_CHECK(i32 %23, i32 %24, i32 %25)
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @PCNT_EVT_L_LIM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @PCNT, i32 0, i32 0), align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %6, align 8
  store i64 %36, i64* %37, align 8
  br label %79

38:                                               ; preds = %3
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @PCNT_EVT_H_LIM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @PCNT, i32 0, i32 0), align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %6, align 8
  store i64 %48, i64* %49, align 8
  br label %78

50:                                               ; preds = %38
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @PCNT_EVT_THRES_0, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @PCNT, i32 0, i32 0), align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %6, align 8
  store i64 %60, i64* %61, align 8
  br label %77

62:                                               ; preds = %50
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @PCNT_EVT_THRES_1, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @PCNT, i32 0, i32 0), align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %6, align 8
  store i64 %72, i64* %73, align 8
  br label %76

74:                                               ; preds = %62
  %75 = load i64*, i64** %6, align 8
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %74, %66
  br label %77

77:                                               ; preds = %76, %54
  br label %78

78:                                               ; preds = %77, %42
  br label %79

79:                                               ; preds = %78, %30
  %80 = load i32, i32* @ESP_OK, align 4
  ret i32 %80
}

declare dso_local i32 @PCNT_CHECK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
