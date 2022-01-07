; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_get_prop_count.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_get_prop_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@local_ctrl_inst_ctx = common dso_local global %struct.TYPE_2__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Service not running\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_local_ctrl_get_prop_count(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_ctrl_inst_ctx, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 @ESP_LOGE(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %9, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load i64*, i64** %3, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_ctrl_inst_ctx, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %3, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i32, i32* @ESP_OK, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %13, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
