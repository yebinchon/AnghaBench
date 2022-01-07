; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_dm9051.c_dm9051_stop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_dm9051.c_dm9051_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@DM9051_IMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"write IMR failed\00", align 1
@err = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@DM9051_RCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"read RCR failed\00", align 1
@RCR_RXEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"write RCR failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @dm9051_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dm9051_stop(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i64, i64* @ESP_OK, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @DM9051_IMR, align 4
  %9 = call i64 @dm9051_register_write(i32* %7, i32 %8, i32 0)
  %10 = load i64, i64* @ESP_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @err, align 4
  %14 = load i32, i32* @ESP_FAIL, align 4
  %15 = call i32 @MAC_CHECK(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  store i32 0, i32* %5, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @DM9051_RCR, align 4
  %18 = call i64 @dm9051_register_read(i32* %16, i32 %17, i32* %5)
  %19 = load i64, i64* @ESP_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @err, align 4
  %23 = load i32, i32* @ESP_FAIL, align 4
  %24 = call i32 @MAC_CHECK(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @RCR_RXEN, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @DM9051_RCR, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @dm9051_register_write(i32* %29, i32 %30, i32 %31)
  %33 = load i64, i64* @ESP_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @err, align 4
  %37 = load i32, i32* @ESP_FAIL, align 4
  %38 = call i32 @MAC_CHECK(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i64, i64* @ESP_OK, align 8
  store i64 %39, i64* %2, align 8
  br label %42

40:                                               ; No predecessors!
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %40, %1
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i32 @MAC_CHECK(i32, i8*, i32, i32) #1

declare dso_local i64 @dm9051_register_write(i32*, i32, i32) #1

declare dso_local i64 @dm9051_register_read(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
