; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_phy_rtl8201.c_rtl8201_page_select.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_phy_rtl8201.c_rtl8201_page_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_8__*, i32, i32, i32)* }
%struct.TYPE_6__ = type { i32, i32 }

@ETH_PHY_PSR_REG_ADDR = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"write PSR failed\00", align 1
@err = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32)* @rtl8201_page_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtl8201_page_select(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64 (%struct.TYPE_8__*, i32, i32, i32)*, i64 (%struct.TYPE_8__*, i32, i32, i32)** %15, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ETH_PHY_PSR_REG_ADDR, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 %16(%struct.TYPE_8__* %17, i32 %20, i32 %21, i32 %23)
  %25 = load i64, i64* @ESP_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @err, align 4
  %29 = call i32 @PHY_CHECK(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* @ESP_OK, align 8
  store i64 %30, i64* %3, align 8
  br label %33

31:                                               ; No predecessors!
  %32 = load i64, i64* @ESP_FAIL, align 8
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %31, %2
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i32 @PHY_CHECK(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
