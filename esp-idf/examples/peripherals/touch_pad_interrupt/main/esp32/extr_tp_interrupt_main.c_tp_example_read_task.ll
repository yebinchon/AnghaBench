; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32/extr_tp_interrupt_main.c_tp_example_read_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32/extr_tp_interrupt_main.c_tp_example_read_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tp_example_read_task.show_message = internal global i32 0, align 4
@TOUCH_PAD_MAX = common dso_local global i32 0, align 4
@s_pad_activated = common dso_local global i32* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"T%d activated!\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@s_pad_init_val = common dso_local global i32* null, align 8
@TOUCH_THRESH_PERCENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"value: %d; init val: %d\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Waiting for any pad being touched...\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Change mode...%s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"interrupt mode\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"filter mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tp_example_read_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tp_example_read_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %1, %107
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = call i32 (...) @touch_pad_intr_enable()
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %36, %11
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TOUCH_PAD_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32*, i32** @s_pad_activated, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load i32, i32* @TAG, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %29 = sdiv i32 200, %28
  %30 = call i32 @vTaskDelay(i32 %29)
  %31 = load i32*, i32** @s_pad_activated, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 0, i32* %34, align 4
  store i32 1, i32* @tp_example_read_task.show_message, align 4
  br label %35

35:                                               ; preds = %24, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %13

39:                                               ; preds = %13
  br label %80

40:                                               ; preds = %8
  %41 = call i32 (...) @touch_pad_intr_disable()
  %42 = call i32 (...) @touch_pad_clear_status()
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %76, %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @TOUCH_PAD_MAX, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @touch_pad_read_filtered(i32 %48, i32* %7)
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** @s_pad_init_val, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TOUCH_THRESH_PERCENT, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sdiv i32 %57, 100
  %59 = icmp slt i32 %50, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %47
  %61 = load i32, i32* @TAG, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @TAG, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** @s_pad_init_val, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %70)
  %72 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %73 = sdiv i32 200, %72
  %74 = call i32 @vTaskDelay(i32 %73)
  store i32 1, i32* %3, align 4
  store i32 1, i32* @tp_example_read_task.show_message, align 4
  br label %75

75:                                               ; preds = %60, %47
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %43

79:                                               ; preds = %43
  br label %80

80:                                               ; preds = %79, %39
  %81 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %82 = sdiv i32 10, %81
  %83 = call i32 @vTaskDelay(i32 %82)
  %84 = load i32, i32* @tp_example_read_task.show_message, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @tp_example_read_task.show_message, align 4
  %86 = srem i32 %84, 500
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* @TAG, align 4
  %90 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %80
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  %94 = srem i32 %92, 2000
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* @TAG, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)
  %106 = call i32 @ESP_LOGW(i32 %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %96, %91
  br label %8
}

declare dso_local i32 @touch_pad_intr_enable(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @touch_pad_intr_disable(...) #1

declare dso_local i32 @touch_pad_clear_status(...) #1

declare dso_local i32 @touch_pad_read_filtered(i32, i32*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
