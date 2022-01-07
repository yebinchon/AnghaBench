; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_run_tasks.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_run_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@apb_intr_test_result = common dso_local global i32 0, align 4
@exit_flag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"assign task accessing DPORT to core 0 and task accessing APB to core 1\0A\00", align 1
@UNITY_FREERTOS_PRIORITY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"start wait for %d seconds [Test %s and %s]\0A\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@dport_test_result = common dso_local global i32 0, align 4
@apb_test_result = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_tasks(i8* %0, void (i8*)* %1, i8* %2, void (i8*)* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  store i8* %0, i8** %6, align 8
  store void (i8*)* %1, void (i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store void (i8*)* %3, void (i8*)** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 1, i32* @apb_intr_test_result, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %35, %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load void (i8*)*, void (i8*)** %7, align 8
  %19 = icmp ne void (i8*)* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %17
  %24 = load void (i8*)*, void (i8*)** %9, align 8
  %25 = icmp ne void (i8*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %26, %20
  %30 = call i32 (...) @xSemaphoreCreateBinary()
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %26, %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %14

38:                                               ; preds = %14
  store i32 0, i32* @exit_flag, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %40 = load void (i8*)*, void (i8*)** %7, align 8
  %41 = icmp ne void (i8*)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load void (i8*)*, void (i8*)** %7, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %46 = load i64, i64* @UNITY_FREERTOS_PRIORITY, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %49 = call i32 @xTaskCreatePinnedToCore(void (i8*)* %43, i8* %44, i32 2048, i32* %45, i64 %47, i32* %48, i32 0)
  br label %50

50:                                               ; preds = %42, %38
  %51 = load void (i8*)*, void (i8*)** %9, align 8
  %52 = icmp ne void (i8*)* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load void (i8*)*, void (i8*)** %9, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %57 = load i64, i64* @UNITY_FREERTOS_PRIORITY, align 8
  %58 = sub nsw i64 %57, 1
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %60 = call i32 @xTaskCreatePinnedToCore(void (i8*)* %54, i8* %55, i32 2048, i32* %56, i64 %58, i32* %59, i32 1)
  br label %61

61:                                               ; preds = %53, %50
  %62 = load i32, i32* %10, align 4
  %63 = sdiv i32 %62, 1000
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %64, i8* %65)
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %69 = sdiv i32 %67, %68
  %70 = call i32 @vTaskDelay(i32 %69)
  store i32 1, i32* @exit_flag, align 4
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %99, %61
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %102

74:                                               ; preds = %71
  %75 = load void (i8*)*, void (i8*)** %7, align 8
  %76 = icmp ne void (i8*)* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77, %74
  %81 = load void (i8*)*, void (i8*)** %9, align 8
  %82 = icmp ne void (i8*)* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %98

86:                                               ; preds = %83, %77
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @portMAX_DELAY, align 4
  %92 = call i32 @xSemaphoreTake(i32 %90, i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @vSemaphoreDelete(i32 %96)
  br label %98

98:                                               ; preds = %86, %83, %80
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %71

102:                                              ; preds = %71
  %103 = load i32, i32* @dport_test_result, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* @apb_test_result, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @apb_intr_test_result, align 4
  %110 = icmp eq i32 %109, 1
  br label %111

111:                                              ; preds = %108, %105, %102
  %112 = phi i1 [ false, %105 ], [ false, %102 ], [ %110, %108 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @TEST_ASSERT(i32 %113)
  ret void
}

declare dso_local i32 @xSemaphoreCreateBinary(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @xTaskCreatePinnedToCore(void (i8*)*, i8*, i32, i32*, i64, i32*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @vSemaphoreDelete(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
