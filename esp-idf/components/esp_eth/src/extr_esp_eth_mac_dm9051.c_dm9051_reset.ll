; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_dm9051.c_dm9051_reset.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_dm9051.c_dm9051_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ESP_OK = common dso_local global i64 0, align 8
@DM9051_GPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"write GPR failed\00", align 1
@err = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@NCR_RST = common dso_local global i32 0, align 4
@DM9051_NCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"write NCR failed\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"read NCR failed\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"reset timeout\00", align 1
@ESP_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @dm9051_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dm9051_reset(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load i64, i64* @ESP_OK, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = load i32, i32* @DM9051_GPR, align 4
  %10 = call i64 @dm9051_register_write(%struct.TYPE_5__* %8, i32 %9, i32 0)
  %11 = load i64, i64* @ESP_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @err, align 4
  %15 = load i32, i32* @ESP_FAIL, align 4
  %16 = call i32 @MAC_CHECK(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = call i32 @pdMS_TO_TICKS(i32 10)
  %18 = call i32 @vTaskDelay(i32 %17)
  %19 = load i32, i32* @NCR_RST, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = load i32, i32* @DM9051_NCR, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @dm9051_register_write(%struct.TYPE_5__* %20, i32 %21, i32 %22)
  %24 = load i64, i64* @ESP_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @err, align 4
  %28 = load i32, i32* @ESP_FAIL, align 4
  %29 = call i32 @MAC_CHECK(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %55, %1
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 10
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = load i32, i32* @DM9051_NCR, align 4
  %40 = call i64 @dm9051_register_read(%struct.TYPE_5__* %38, i32 %39, i32* %5)
  %41 = load i64, i64* @ESP_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @err, align 4
  %45 = load i32, i32* @ESP_FAIL, align 4
  %46 = call i32 @MAC_CHECK(i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @NCR_RST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %37
  br label %58

52:                                               ; preds = %37
  %53 = call i32 @pdMS_TO_TICKS(i32 10)
  %54 = call i32 @vTaskDelay(i32 %53)
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %30

58:                                               ; preds = %51, %30
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 10
  %64 = icmp slt i32 %59, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* @err, align 4
  %67 = load i32, i32* @ESP_ERR_TIMEOUT, align 4
  %68 = call i32 @MAC_CHECK(i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i64, i64* @ESP_OK, align 8
  store i64 %69, i64* %2, align 8
  br label %72

70:                                               ; No predecessors!
  %71 = load i64, i64* %4, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %70, %58
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i32 @MAC_CHECK(i32, i8*, i32, i32) #1

declare dso_local i64 @dm9051_register_write(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i64 @dm9051_register_read(%struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
