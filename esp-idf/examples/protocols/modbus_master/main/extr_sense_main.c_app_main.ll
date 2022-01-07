; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@ESP_OK = common dso_local global i64 0, align 8
@cid_table = common dso_local global %struct.TYPE_6__** null, align 8
@cid_counter = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Found (%u) characteristics in the table.\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Characteristic (%s) data = 0x%.4x read successful.\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Characteristic (%s) read value fail, err = %d (%s).\00", align 1
@trigger_operation_task = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"trigger_operation_task\00", align 1
@SENSE_TRIGGER_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@SENSE_TRIGGER_TASK_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca float, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i64, i64* @ESP_OK, align 8
  store i64 %7, i64* %1, align 8
  %8 = call i32 (...) @sense_device_init()
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @cid_table, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %9, i64 0
  %11 = call i64 @sense_modbus_get_characteristics(%struct.TYPE_6__** %10, i32* @cid_counter)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @ESP_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* @cid_counter, align 4
  %17 = icmp sge i32 %16, 1
  br label %18

18:                                               ; preds = %15, %0
  %19 = phi i1 [ false, %0 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* @TAG, align 4
  %23 = load i32, i32* @cid_counter, align 4
  %24 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  store float 0.000000e+00, float* %3, align 4
  %25 = load i64, i64* @ESP_OK, align 8
  store i64 %25, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %66, %18
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @cid_counter, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @cid_table, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %2, align 8
  %36 = load i32, i32* %6, align 4
  %37 = bitcast float* %3 to i8*
  %38 = call i64 @sense_modbus_read_value(i32 %36, i8* %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @ESP_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %30
  %43 = load i32, i32* @TAG, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load float, float* %3, align 4
  %49 = fptoui float %48 to i32
  %50 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %65

53:                                               ; preds = %30
  %54 = load i32, i32* @TAG, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i64, i64* %4, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* %4, align 8
  %62 = call i64 @esp_err_to_name(i64 %61)
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @ESP_LOGE(i32 %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %58, i32 %60, i8* %63)
  br label %65

65:                                               ; preds = %53, %42
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %26

69:                                               ; preds = %26
  %70 = load i32, i32* @trigger_operation_task, align 4
  %71 = load i32, i32* @SENSE_TRIGGER_TASK_STACK_SIZE, align 4
  %72 = load i32, i32* @SENSE_TRIGGER_TASK_PRIO, align 4
  %73 = call i32 @xTaskCreate(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32* null, i32 %72, i32* null)
  ret void
}

declare dso_local i32 @sense_device_init(...) #1

declare dso_local i64 @sense_modbus_get_characteristics(%struct.TYPE_6__**, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i64 @sense_modbus_read_value(i32, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i8*, i32, i8*) #1

declare dso_local i64 @esp_err_to_name(i64) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
