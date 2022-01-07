; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_dm9051.c_dm9051_clear_multicast_table.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_dm9051.c_dm9051_clear_multicast_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@DM9051_BCASTCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"write BCASTCR failed\00", align 1
@err = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@DM9051_MAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"write MAR failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @dm9051_clear_multicast_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dm9051_clear_multicast_table(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i64, i64* @ESP_OK, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i64, i64* @DM9051_BCASTCR, align 8
  %9 = call i64 @dm9051_register_write(i32* %7, i64 %8, i32 0)
  %10 = load i64, i64* @ESP_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @err, align 4
  %14 = load i32, i32* @ESP_FAIL, align 4
  %15 = call i32 @MAC_CHECK(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 7
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = load i64, i64* @DM9051_MAR, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i64 @dm9051_register_write(i32* %20, i64 %24, i32 0)
  %26 = load i64, i64* @ESP_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @err, align 4
  %30 = load i32, i32* @ESP_FAIL, align 4
  %31 = call i32 @MAC_CHECK(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* @DM9051_MAR, align 8
  %38 = add nsw i64 %37, 7
  %39 = call i64 @dm9051_register_write(i32* %36, i64 %38, i32 128)
  %40 = load i64, i64* @ESP_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @err, align 4
  %44 = load i32, i32* @ESP_FAIL, align 4
  %45 = call i32 @MAC_CHECK(i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i64, i64* @ESP_OK, align 8
  store i64 %46, i64* %2, align 8
  br label %49

47:                                               ; No predecessors!
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %47, %35
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

declare dso_local i32 @MAC_CHECK(i32, i8*, i32, i32) #1

declare dso_local i64 @dm9051_register_write(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
