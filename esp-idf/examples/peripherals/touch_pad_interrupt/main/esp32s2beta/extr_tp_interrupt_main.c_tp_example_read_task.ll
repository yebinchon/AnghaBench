; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32s2beta/extr_tp_interrupt_main.c_tp_example_read_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32s2beta/extr_tp_interrupt_main.c_tp_example_read_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }

@tp_example_read_task.guard_mode_flag = internal global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@que_touch = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i64 0, align 8
@pdTRUE = common dso_local global i32 0, align 4
@TOUCH_PAD_INTR_MASK_ACTIVE = common dso_local global i32 0, align 4
@button = common dso_local global i64* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"TouchSensor [%d] be actived, enter guard mode\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"TouchSensor [%d] be actived, status mask 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"In guard mode. No response\00", align 1
@TOUCH_PAD_INTR_MASK_INACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"TouchSensor [%d] be actived, exit guard mode\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"TouchSensor [%d] be inactived, status mask 0x%x\00", align 1
@TOUCH_PAD_INTR_MASK_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"TouchSensor [%d] measure done, raw data %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tp_example_read_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tp_example_read_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 32, i1 false)
  %6 = load i32, i32* @portTICK_RATE_MS, align 4
  %7 = sdiv i32 100, %6
  %8 = call i32 @vTaskDelay(i32 %7)
  %9 = call i32 (...) @tp_example_set_thresholds()
  br label %10

10:                                               ; preds = %1, %18, %95
  %11 = load i32, i32* @que_touch, align 4
  %12 = load i64, i64* @portMAX_DELAY, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @xQueueReceive(i32 %11, %struct.TYPE_3__* %3, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @pdTRUE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %10

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TOUCH_PAD_INTR_MASK_ACTIVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** @button, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  store i32 1, i32* @tp_example_read_task.guard_mode_flag, align 4
  %33 = load i32, i32* @TAG, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %51

37:                                               ; preds = %25
  %38 = load i32, i32* @tp_example_read_task.guard_mode_flag, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* @TAG, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ESP_LOGI(i32 %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %43, i32 %45)
  br label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @TAG, align 4
  %49 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %32
  br label %52

52:                                               ; preds = %51, %19
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TOUCH_PAD_INTR_MASK_INACTIVE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** @button, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  store i32 0, i32* @tp_example_read_task.guard_mode_flag, align 4
  %66 = load i32, i32* @TAG, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  br label %81

70:                                               ; preds = %58
  %71 = load i32, i32* @tp_example_read_task.guard_mode_flag, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* @TAG, align 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ESP_LOGI(i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 %76, i32 %78)
  br label %80

80:                                               ; preds = %73, %70
  br label %81

81:                                               ; preds = %80, %65
  br label %82

82:                                               ; preds = %81, %52
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TOUCH_PAD_INTR_MASK_DONE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, i32* @TAG, align 4
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ESP_LOGI(i32 %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 %91, i32 %93)
  br label %95

95:                                               ; preds = %88, %82
  br label %10
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vTaskDelay(i32) #2

declare dso_local i32 @tp_example_set_thresholds(...) #2

declare dso_local i32 @xQueueReceive(i32, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @ESP_LOGW(i32, i8*, ...) #2

declare dso_local i32 @ESP_LOGI(i32, i8*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
