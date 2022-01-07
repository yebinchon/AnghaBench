; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_set_event_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_set_event_value.c"
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
@PCNT_EVT_L_LIM = common dso_local global i64 0, align 8
@PCNT_LIMT_VAL_ERR_STR = common dso_local global i32 0, align 4
@PCNT_EVT_H_LIM = common dso_local global i64 0, align 8
@PCNT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PCNT_EVT_THRES_0 = common dso_local global i64 0, align 8
@PCNT_EVT_THRES_1 = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcnt_set_event_value(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
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
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @PCNT_EVT_L_LIM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = icmp sgt i64 %25, 0
  br label %27

27:                                               ; preds = %24, %3
  %28 = phi i1 [ false, %3 ], [ %26, %24 ]
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @PCNT_LIMT_VAL_ERR_STR, align 4
  %32 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %33 = call i32 @PCNT_CHECK(i32 %30, i32 %31, i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @PCNT_EVT_H_LIM, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i64, i64* %6, align 8
  %39 = icmp slt i64 %38, 0
  br label %40

40:                                               ; preds = %37, %27
  %41 = phi i1 [ false, %27 ], [ %39, %37 ]
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @PCNT_LIMT_VAL_ERR_STR, align 4
  %45 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %46 = call i32 @PCNT_CHECK(i32 %43, i32 %44, i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @PCNT_EVT_L_LIM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %40
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @PCNT, i32 0, i32 0), align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i64 %51, i64* %56, align 8
  br label %93

57:                                               ; preds = %40
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @PCNT_EVT_H_LIM, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @PCNT, i32 0, i32 0), align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i64 %62, i64* %67, align 8
  br label %92

68:                                               ; preds = %57
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @PCNT_EVT_THRES_0, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @PCNT, i32 0, i32 0), align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i64 %73, i64* %78, align 8
  br label %91

79:                                               ; preds = %68
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @PCNT_EVT_THRES_1, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @PCNT, i32 0, i32 0), align 8
  %86 = load i64, i64* %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i64 %84, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %79
  br label %91

91:                                               ; preds = %90, %72
  br label %92

92:                                               ; preds = %91, %61
  br label %93

93:                                               ; preds = %92, %50
  %94 = load i32, i32* @ESP_OK, align 4
  ret i32 %94
}

declare dso_local i32 @PCNT_CHECK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
