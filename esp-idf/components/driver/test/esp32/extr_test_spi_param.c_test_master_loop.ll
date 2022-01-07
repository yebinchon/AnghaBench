; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_test_master_loop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_test_master_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32 }

@MASTER_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"****************** %s ***************\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"==============> %dk\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"slave ready\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"=> test%d\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@HALF_DUPLEX_MOSI = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"skip data check due to duplex mode or freq.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_master_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_master_loop(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %6, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = call i32 @spitest_init_transactions(%struct.TYPE_9__* %23, %struct.TYPE_10__* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = load i32, i32* @MASTER_TAG, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %148, %2
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %151

43:                                               ; preds = %34
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %151

55:                                               ; preds = %48, %43
  %56 = load i32, i32* @MASTER_TAG, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %57, 1000
  %59 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = call i32 @test_master_start(i32* %7, i32 %60, %struct.TYPE_9__* %61, %struct.TYPE_10__* %62)
  %64 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %142, %55
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %145

71:                                               ; preds = %65
  %72 = load i32, i32* @MASTER_TAG, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = call i32 @vTaskDelay(i32 20)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %12, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @spi_device_transmit(i32 %82, i32* %83)
  %85 = call i32 @TEST_ESP_OK(i32 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @get_trans_len(i64 %88, i32* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @spitest_master_print_data(i32* %91, i32 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @portMAX_DELAY, align 4
  %99 = call i32* @xRingbufferReceive(i32 %97, i64* %14, i32 %98)
  store i32* %99, i32** %15, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @spitest_slave_print_data(i32* %100, i32 0)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HALF_DUPLEX_MOSI, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %71
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = icmp sle i32 %113, %116
  br label %118

118:                                              ; preds = %112, %107
  %119 = phi i1 [ true, %107 ], [ %117, %112 ]
  br label %120

120:                                              ; preds = %118, %71
  %121 = phi i1 [ false, %71 ], [ %119, %118 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @MASTER_TAG, align 4
  %127 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %126, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %135

128:                                              ; preds = %120
  %129 = load i32, i32* %13, align 4
  %130 = load i32*, i32** %12, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @spitest_check_data(i32 %129, i32* %130, i32* %131, i32 %132, i32 0, i32 0)
  %134 = call i32 @TEST_ESP_OK(i32 %133)
  br label %135

135:                                              ; preds = %128, %125
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @vRingbufferReturnItem(i32 %139, i32* %140)
  br label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %65

145:                                              ; preds = %65
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @master_free_device_bus(i32 %146)
  br label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %34

151:                                              ; preds = %54, %42
  ret void
}

declare dso_local i32 @spitest_init_transactions(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @test_master_start(i32*, i32, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @unity_wait_for_signal(i8*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @spi_device_transmit(i32, i32*) #1

declare dso_local i32 @get_trans_len(i64, i32*) #1

declare dso_local i32 @spitest_master_print_data(i32*, i32) #1

declare dso_local i32* @xRingbufferReceive(i32, i64*, i32) #1

declare dso_local i32 @spitest_slave_print_data(i32*, i32) #1

declare dso_local i32 @spitest_check_data(i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @vRingbufferReturnItem(i32, i32*) #1

declare dso_local i32 @master_free_device_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
