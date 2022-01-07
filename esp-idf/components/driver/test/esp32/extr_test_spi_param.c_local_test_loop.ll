; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_local_test_loop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_local_test_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32 }

@MASTER_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"****************** %s ***************\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"======> %dk\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"=> test%d\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@HALF_DUPLEX_MOSI = common dso_local global i64 0, align 8
@HALF_DUPLEX_MISO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"skip master data check\00", align 1
@SLAVE_TAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"skip slave data check\00", align 1
@TEST_SLAVE_HOST = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @local_test_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_test_loop(i8* %0, i8* %1) #0 {
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

34:                                               ; preds = %165, %2
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
  br label %168

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
  br label %168

55:                                               ; preds = %48, %43
  %56 = load i32, i32* @MASTER_TAG, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %57, 1000
  %59 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = call i32 @local_test_start(i32* %7, i32 %60, %struct.TYPE_9__* %61, %struct.TYPE_10__* %62)
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %153, %55
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %156

70:                                               ; preds = %64
  %71 = load i32, i32* @MASTER_TAG, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = call i32 @vTaskDelay(i32 9)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32* %80, i32** %12, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @spi_device_transmit(i32 %81, i32* %82)
  %84 = call i32 @TEST_ESP_OK(i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @get_trans_len(i64 %87, i32* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @spitest_master_print_data(i32* %90, i32 %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @portMAX_DELAY, align 4
  %98 = call i32* @xRingbufferReceive(i32 %96, i64* %14, i32 %97)
  store i32* %98, i32** %15, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @spitest_slave_print_data(i32* %99, i32 1)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @HALF_DUPLEX_MOSI, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %70
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = icmp sle i32 %112, %115
  br label %117

117:                                              ; preds = %111, %106
  %118 = phi i1 [ true, %106 ], [ %116, %111 ]
  br label %119

119:                                              ; preds = %117, %70
  %120 = phi i1 [ false, %70 ], [ %118, %117 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %16, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @HALF_DUPLEX_MISO, align 8
  %126 = icmp ne i64 %124, %125
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %119
  %131 = load i32, i32* @MASTER_TAG, align 4
  %132 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %119
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* @SLAVE_TAG, align 4
  %138 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %13, align 4
  %141 = load i32*, i32** %12, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @spitest_check_data(i32 %140, i32* %141, i32* %142, i32 %143, i32 1, i32 %144)
  %146 = call i32 @TEST_ESP_OK(i32 %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %15, align 8
  %152 = call i32 @vRingbufferReturnItem(i32 %150, i32* %151)
  br label %153

153:                                              ; preds = %139
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %64

156:                                              ; preds = %64
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @master_free_device_bus(i32 %157)
  %159 = load i32, i32* @TEST_SLAVE_HOST, align 4
  %160 = call i64 @spi_slave_free(i32 %159)
  %161 = load i64, i64* @ESP_OK, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @TEST_ASSERT(i32 %163)
  br label %165

165:                                              ; preds = %156
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %34

168:                                              ; preds = %54, %42
  ret void
}

declare dso_local i32 @spitest_init_transactions(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @local_test_start(i32*, i32, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

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

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i64 @spi_slave_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
