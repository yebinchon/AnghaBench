; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/rmt_nec_tx_rx/main/extr_infrared_nec_main.c_rmt_example_nec_rx_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/rmt_nec_tx_rx/main/extr_infrared_nec_main.c_rmt_example_nec_rx_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RMT_RX_CHANNEL = common dso_local global i32 0, align 4
@NEC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RMT RCV --- addr: 0x%04x cmd: 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rmt_example_nec_rx_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmt_example_nec_rx_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @RMT_RX_CHANNEL, align 4
  store i32 %11, i32* %3, align 4
  %12 = call i32 (...) @nec_rx_init()
  store i32* null, i32** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @rmt_get_ringbuf_handle(i32 %13, i32** %4)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @rmt_rx_start(i32 %15, i32 1)
  br label %17

17:                                               ; preds = %57, %1
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %58

20:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @xRingbufferReceive(i32* %21, i64* %5, i32 1000)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %50
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i64, i64* %5, align 8
  %33 = udiv i64 %32, 4
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %33, %35
  %37 = call i32 @nec_parse_items(i32* %31, i64 %36, i32* %7, i32* %8)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @NEC_TAG, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ESP_LOGI(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  br label %50

49:                                               ; preds = %27
  br label %51

50:                                               ; preds = %40
  br label %27

51:                                               ; preds = %49
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @vRingbufferReturnItem(i32* %52, i8* %54)
  br label %57

56:                                               ; preds = %20
  br label %58

57:                                               ; preds = %51
  br label %17

58:                                               ; preds = %56, %17
  %59 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @nec_rx_init(...) #1

declare dso_local i32 @rmt_get_ringbuf_handle(i32, i32**) #1

declare dso_local i32 @rmt_rx_start(i32, i32) #1

declare dso_local i64 @xRingbufferReceive(i32*, i64*, i32) #1

declare dso_local i32 @nec_parse_items(i32*, i64, i32*, i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32) #1

declare dso_local i32 @vRingbufferReturnItem(i32*, i8*) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
