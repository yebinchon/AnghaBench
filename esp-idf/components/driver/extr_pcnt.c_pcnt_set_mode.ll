; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_set_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@PCNT_UNIT_MAX = common dso_local global i64 0, align 8
@PCNT_UNIT_ERR_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@PCNT_CHANNEL_MAX = common dso_local global i64 0, align 8
@PCNT_CHANNEL_ERR_STR = common dso_local global i32 0, align 4
@PCNT_COUNT_MAX = common dso_local global i64 0, align 8
@PCNT_COUNT_MODE_ERR_STR = common dso_local global i32 0, align 4
@PCNT_MODE_MAX = common dso_local global i64 0, align 8
@PCNT_CTRL_MODE_ERR_STR = common dso_local global i32 0, align 4
@PCNT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcnt_set_mode(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @PCNT_UNIT_MAX, align 8
  %15 = icmp ult i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @PCNT_UNIT_ERR_STR, align 4
  %18 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %19 = call i32 @PCNT_CHECK(i32 %16, i32 %17, i32 %18)
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @PCNT_CHANNEL_MAX, align 8
  %22 = icmp slt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @PCNT_CHANNEL_ERR_STR, align 4
  %25 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %26 = call i32 @PCNT_CHECK(i32 %23, i32 %24, i32 %25)
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @PCNT_COUNT_MAX, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @PCNT_COUNT_MAX, align 8
  %33 = icmp slt i64 %31, %32
  br label %34

34:                                               ; preds = %30, %6
  %35 = phi i1 [ false, %6 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* @PCNT_COUNT_MODE_ERR_STR, align 4
  %38 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %39 = call i32 @PCNT_CHECK(i32 %36, i32 %37, i32 %38)
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @PCNT_MODE_MAX, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @PCNT_MODE_MAX, align 8
  %46 = icmp slt i64 %44, %45
  br label %47

47:                                               ; preds = %43, %34
  %48 = phi i1 [ false, %34 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @PCNT_CTRL_MODE_ERR_STR, align 4
  %51 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %52 = call i32 @PCNT_CHECK(i32 %49, i32 %50, i32 %51)
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %47
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 7
  store i64 %56, i64* %61, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 6
  store i64 %62, i64* %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  store i64 %68, i64* %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  store i64 %74, i64* %79, align 8
  br label %105

80:                                               ; preds = %47
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i64 %81, i64* %86, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i64 %87, i64* %92, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i64 %93, i64* %98, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PCNT, i32 0, i32 0), align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i64 %99, i64* %104, align 8
  br label %105

105:                                              ; preds = %80, %55
  %106 = load i32, i32* @ESP_OK, align 4
  ret i32 %106
}

declare dso_local i32 @PCNT_CHECK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
