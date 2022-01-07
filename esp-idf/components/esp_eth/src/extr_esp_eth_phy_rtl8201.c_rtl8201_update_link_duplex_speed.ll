; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_phy_rtl8201.c_rtl8201_update_link_duplex_speed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_phy_rtl8201.c_rtl8201_update_link_duplex_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_13__*, i32, i32, i32*)*, i64 (%struct.TYPE_13__*, i32, i8*)* }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i64, i32 }

@ETH_SPEED_10M = common dso_local global i64 0, align 8
@ETH_DUPLEX_HALF = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"select page 0 failed\00", align 1
@err = common dso_local global i32 0, align 4
@ETH_PHY_BMSR_REG_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"read BMSR failed\00", align 1
@ETH_LINK_UP = common dso_local global i64 0, align 8
@ETH_LINK_DOWN = common dso_local global i64 0, align 8
@ETH_PHY_BMCR_REG_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"read BMCR failed\00", align 1
@ETH_SPEED_100M = common dso_local global i64 0, align 8
@ETH_DUPLEX_FULL = common dso_local global i64 0, align 8
@ETH_STATE_SPEED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"change speed failed\00", align 1
@ETH_STATE_DUPLEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"change duplex failed\00", align 1
@ETH_STATE_LINK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"change link failed\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @rtl8201_update_link_duplex_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtl8201_update_link_duplex_speed(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %4, align 8
  %13 = load i64, i64* @ETH_SPEED_10M, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* @ETH_DUPLEX_HALF, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = call i64 @rtl8201_page_select(%struct.TYPE_12__* %15, i32 0)
  %17 = load i64, i64* @ESP_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @err, align 4
  %21 = call i32 @PHY_CHECK(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64 (%struct.TYPE_13__*, i32, i32, i32*)*, i64 (%struct.TYPE_13__*, i32, i32, i32*)** %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ETH_PHY_BMSR_REG_ADDR, align 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %31 = call i64 %24(%struct.TYPE_13__* %25, i32 %28, i32 %29, i32* %30)
  %32 = load i64, i64* @ESP_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* @err, align 4
  %36 = call i32 @PHY_CHECK(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i64, i64* @ETH_LINK_UP, align 8
  br label %44

42:                                               ; preds = %1
  %43 = load i64, i64* @ETH_LINK_DOWN, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  store i64 %45, i64* %9, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %130

51:                                               ; preds = %44
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @ETH_LINK_UP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %51
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64 (%struct.TYPE_13__*, i32, i32, i32*)*, i64 (%struct.TYPE_13__*, i32, i32, i32*)** %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ETH_PHY_BMCR_REG_ADDR, align 4
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %65 = call i64 %58(%struct.TYPE_13__* %59, i32 %62, i32 %63, i32* %64)
  %66 = load i64, i64* @ESP_OK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* @err, align 4
  %70 = call i32 @PHY_CHECK(i32 %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %55
  %75 = load i64, i64* @ETH_SPEED_100M, align 8
  store i64 %75, i64* %5, align 8
  br label %78

76:                                               ; preds = %55
  %77 = load i64, i64* @ETH_SPEED_10M, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i64, i64* @ETH_DUPLEX_FULL, align 8
  store i64 %83, i64* %6, align 8
  br label %86

84:                                               ; preds = %78
  %85 = load i64, i64* @ETH_DUPLEX_HALF, align 8
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i64 (%struct.TYPE_13__*, i32, i8*)*, i64 (%struct.TYPE_13__*, i32, i8*)** %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = load i32, i32* @ETH_STATE_SPEED, align 4
  %92 = load i64, i64* %5, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i64 %89(%struct.TYPE_13__* %90, i32 %91, i8* %93)
  %95 = load i64, i64* @ESP_OK, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* @err, align 4
  %99 = call i32 @PHY_CHECK(i32 %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i64 (%struct.TYPE_13__*, i32, i8*)*, i64 (%struct.TYPE_13__*, i32, i8*)** %101, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = load i32, i32* @ETH_STATE_DUPLEX, align 4
  %105 = load i64, i64* %6, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i64 %102(%struct.TYPE_13__* %103, i32 %104, i8* %106)
  %108 = load i64, i64* @ESP_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* @err, align 4
  %112 = call i32 @PHY_CHECK(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %86, %51
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i64 (%struct.TYPE_13__*, i32, i8*)*, i64 (%struct.TYPE_13__*, i32, i8*)** %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = load i32, i32* @ETH_STATE_LINK, align 4
  %119 = load i64, i64* %9, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = call i64 %116(%struct.TYPE_13__* %117, i32 %118, i8* %120)
  %122 = load i64, i64* @ESP_OK, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* @err, align 4
  %126 = call i32 @PHY_CHECK(i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = load i64, i64* %9, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %113, %44
  %131 = load i64, i64* @ESP_OK, align 8
  store i64 %131, i64* %2, align 8
  br label %134

132:                                              ; No predecessors!
  %133 = load i64, i64* @ESP_FAIL, align 8
  store i64 %133, i64* %2, align 8
  br label %134

134:                                              ; preds = %132, %130
  %135 = load i64, i64* %2, align 8
  ret i64 %135
}

declare dso_local i32 @PHY_CHECK(i32, i8*, i32) #1

declare dso_local i64 @rtl8201_page_select(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
