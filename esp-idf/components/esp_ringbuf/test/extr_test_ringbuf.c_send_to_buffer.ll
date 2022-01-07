; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_send_to_buffer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_send_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMP_TEST_ITERATIONS = common dso_local global i32 0, align 4
@CONT_DATA_LEN = common dso_local global i64 0, align 8
@continuous_data = common dso_local global i32* null, align 8
@TIMEOUT_TICKS = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Failed to send an item\00", align 1
@tx_done = common dso_local global i32 0, align 4
@rx_done = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @send_to_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_to_buffer(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %53, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SMP_TEST_ITERATIONS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @CONT_DATA_LEN, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = call i64 (...) @rand()
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, 1
  %21 = urem i64 %18, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* @CONT_DATA_LEN, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i64, i64* @CONT_DATA_LEN, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %27, %17
  %32 = load i32, i32* %3, align 4
  %33 = load i32*, i32** @continuous_data, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = bitcast i32* %35 to i8*
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @TIMEOUT_TICKS, align 4
  %39 = call i64 @xRingbufferSend(i32 %32, i8* %36, i64 %37, i32 %38)
  %40 = load i64, i64* @pdTRUE, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @TEST_ASSERT_MESSAGE(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %6, align 8
  br label %13

47:                                               ; preds = %13
  %48 = load i32, i32* @tx_done, align 4
  %49 = call i32 @xSemaphoreGive(i32 %48)
  %50 = load i32, i32* @rx_done, align 4
  %51 = load i32, i32* @portMAX_DELAY, align 4
  %52 = call i32 @xSemaphoreTake(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %8

56:                                               ; preds = %8
  ret void
}

declare dso_local i64 @rand(...) #1

declare dso_local i32 @TEST_ASSERT_MESSAGE(i32, i8*) #1

declare dso_local i64 @xRingbufferSend(i32, i8*, i64, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
