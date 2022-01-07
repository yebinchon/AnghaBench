; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_rmt.c_get_rx_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_rmt.c_get_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RMT RCV --- addr: 0x%04x cmd: 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rx_data(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %57, %1
  %11 = load i64, i64* %2, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  %14 = load i64, i64* %2, align 8
  %15 = call i64 @xRingbufferReceive(i64 %14, i64* %4, i32 1000)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %50
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i64, i64* %4, align 8
  %26 = udiv i64 %25, 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %26, %28
  %30 = call i32 @parse_items(i32* %24, i64 %29, i64* %6, i64* %7)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %20
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @TAG, align 4
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @ESP_LOGI(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %3, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_ASSERT(i32 %45)
  %47 = load i64, i64* %3, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %3, align 8
  br label %50

49:                                               ; preds = %20
  br label %51

50:                                               ; preds = %33
  br label %20

51:                                               ; preds = %49
  %52 = load i64, i64* %2, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @vRingbufferReturnItem(i64 %52, i8* %54)
  br label %57

56:                                               ; preds = %13
  br label %58

57:                                               ; preds = %51
  br label %10

58:                                               ; preds = %56, %10
  %59 = load i64, i64* %3, align 8
  %60 = trunc i64 %59 to i32
  ret i32 %60
}

declare dso_local i64 @xRingbufferReceive(i64, i64*, i32) #1

declare dso_local i32 @parse_items(i32*, i64, i64*, i64*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i64, i64) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @vRingbufferReturnItem(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
