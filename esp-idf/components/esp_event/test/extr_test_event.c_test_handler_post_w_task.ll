; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_event/test/extr_test_event.c_test_handler_post_w_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_event/test/extr_test_event.c_test_handler_post_w_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@s_test_base1 = common dso_local global i64 0, align 8
@TEST_EVENT_BASE1_EV1 = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@TEST_EVENT_BASE1_EV2 = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@ESP_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i8*)* @test_handler_post_w_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_handler_post_w_task(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 2
  br i1 %25, label %26, label %50

26:                                               ; preds = %4
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @s_test_base1, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @TEST_EVENT_BASE1_EV1, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* @ESP_OK, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @s_test_base1, align 8
  %39 = load i32, i32* @TEST_EVENT_BASE1_EV2, align 4
  %40 = load i32, i32* @portMAX_DELAY, align 4
  %41 = call i32 @esp_event_post_to(i32 %37, i64 %38, i32 %39, i32* null, i32 0, i32 %40)
  %42 = call i32 @TEST_ASSERT_EQUAL(i32 %35, i32 %41)
  br label %49

43:                                               ; preds = %30, %26
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @xSemaphoreGive(i32 %47)
  br label %49

49:                                               ; preds = %43, %34
  br label %74

50:                                               ; preds = %4
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @s_test_base1, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @TEST_EVENT_BASE1_EV1, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @portMAX_DELAY, align 4
  %64 = call i32 @xSemaphoreTake(i32 %62, i32 %63)
  %65 = load i32, i32* @ESP_ERR_TIMEOUT, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* @s_test_base1, align 8
  %69 = load i32, i32* @TEST_EVENT_BASE1_EV2, align 4
  %70 = load i32, i32* @portMAX_DELAY, align 4
  %71 = call i32 @esp_event_post_to(i32 %67, i64 %68, i32 %69, i32* null, i32 0, i32 %70)
  %72 = call i32 @TEST_ASSERT_EQUAL(i32 %65, i32 %71)
  br label %73

73:                                               ; preds = %58, %54, %50
  br label %74

74:                                               ; preds = %73, %49
  ret void
}

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @esp_event_post_to(i32, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
