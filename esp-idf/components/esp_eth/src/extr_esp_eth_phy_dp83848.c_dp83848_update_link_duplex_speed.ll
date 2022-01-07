; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_phy_dp83848.c_dp83848_update_link_duplex_speed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_phy_dp83848.c_dp83848_update_link_duplex_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_13__*, i32, i32, i32*)*, i64 (%struct.TYPE_13__*, i32, i8*)* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@ETH_SPEED_10M = common dso_local global i64 0, align 8
@ETH_DUPLEX_HALF = common dso_local global i64 0, align 8
@ETH_PHY_BMSR_REG_ADDR = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"read BMSR failed\00", align 1
@err = common dso_local global i32 0, align 4
@ETH_LINK_UP = common dso_local global i64 0, align 8
@ETH_LINK_DOWN = common dso_local global i64 0, align 8
@ETH_PHY_STS_REG_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"read PHYSTS failed\00", align 1
@ETH_SPEED_100M = common dso_local global i64 0, align 8
@ETH_DUPLEX_FULL = common dso_local global i64 0, align 8
@ETH_STATE_SPEED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"change speed failed\00", align 1
@ETH_STATE_DUPLEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"change duplex failed\00", align 1
@ETH_STATE_LINK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"change link failed\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @dp83848_update_link_duplex_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dp83848_update_link_duplex_speed(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
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
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64 (%struct.TYPE_13__*, i32, i32, i32*)*, i64 (%struct.TYPE_13__*, i32, i32, i32*)** %16, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ETH_PHY_BMSR_REG_ADDR, align 4
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %24 = call i64 %17(%struct.TYPE_13__* %18, i32 %21, i32 %22, i32* %23)
  %25 = load i64, i64* @ESP_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @err, align 4
  %29 = call i32 @PHY_CHECK(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i64, i64* @ETH_LINK_UP, align 8
  br label %37

35:                                               ; preds = %1
  %36 = load i64, i64* @ETH_LINK_DOWN, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i64 [ %34, %33 ], [ %36, %35 ]
  store i64 %38, i64* %9, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %123

44:                                               ; preds = %37
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @ETH_LINK_UP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %44
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64 (%struct.TYPE_13__*, i32, i32, i32*)*, i64 (%struct.TYPE_13__*, i32, i32, i32*)** %50, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ETH_PHY_STS_REG_ADDR, align 4
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %58 = call i64 %51(%struct.TYPE_13__* %52, i32 %55, i32 %56, i32* %57)
  %59 = load i64, i64* @ESP_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* @err, align 4
  %63 = call i32 @PHY_CHECK(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  %68 = load i64, i64* @ETH_SPEED_10M, align 8
  store i64 %68, i64* %5, align 8
  br label %71

69:                                               ; preds = %48
  %70 = load i64, i64* @ETH_SPEED_100M, align 8
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i64, i64* @ETH_DUPLEX_FULL, align 8
  store i64 %76, i64* %6, align 8
  br label %79

77:                                               ; preds = %71
  %78 = load i64, i64* @ETH_DUPLEX_HALF, align 8
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i64 (%struct.TYPE_13__*, i32, i8*)*, i64 (%struct.TYPE_13__*, i32, i8*)** %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = load i32, i32* @ETH_STATE_SPEED, align 4
  %85 = load i64, i64* %5, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i64 %82(%struct.TYPE_13__* %83, i32 %84, i8* %86)
  %88 = load i64, i64* @ESP_OK, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* @err, align 4
  %92 = call i32 @PHY_CHECK(i32 %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i64 (%struct.TYPE_13__*, i32, i8*)*, i64 (%struct.TYPE_13__*, i32, i8*)** %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = load i32, i32* @ETH_STATE_DUPLEX, align 4
  %98 = load i64, i64* %6, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = call i64 %95(%struct.TYPE_13__* %96, i32 %97, i8* %99)
  %101 = load i64, i64* @ESP_OK, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* @err, align 4
  %105 = call i32 @PHY_CHECK(i32 %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %79, %44
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i64 (%struct.TYPE_13__*, i32, i8*)*, i64 (%struct.TYPE_13__*, i32, i8*)** %108, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = load i32, i32* @ETH_STATE_LINK, align 4
  %112 = load i64, i64* %9, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = call i64 %109(%struct.TYPE_13__* %110, i32 %111, i8* %113)
  %115 = load i64, i64* @ESP_OK, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* @err, align 4
  %119 = call i32 @PHY_CHECK(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %106, %37
  %124 = load i64, i64* @ESP_OK, align 8
  store i64 %124, i64* %2, align 8
  br label %127

125:                                              ; No predecessors!
  %126 = load i64, i64* @ESP_FAIL, align 8
  store i64 %126, i64* %2, align 8
  br label %127

127:                                              ; preds = %125, %123
  %128 = load i64, i64* %2, align 8
  ret i64 %128
}

declare dso_local i32 @PHY_CHECK(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
