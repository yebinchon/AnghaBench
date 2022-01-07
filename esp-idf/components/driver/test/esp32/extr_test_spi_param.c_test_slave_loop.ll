; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_test_slave_loop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_test_slave_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@SLAVE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"****************** %s ***************\00", align 1
@MASTER_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"==============> %dk\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"slave ready\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"===== test%d =====\00", align 1
@FULL_DUPLEX = common dso_local global i32 0, align 4
@HALF_DUPLEX_MISO = common dso_local global i64 0, align 8
@TEST_SLAVE_HOST = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_slave_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_slave_loop(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
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
  %23 = load i32, i32* @SLAVE_TAG, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = call i32 @spitest_init_transactions(%struct.TYPE_9__* %28, %struct.TYPE_10__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %156, %2
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %159

43:                                               ; preds = %34
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %159

55:                                               ; preds = %48, %43
  %56 = load i32, i32* @MASTER_TAG, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 1000
  %63 = call i32 @ESP_LOGI(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = call i32 @timing_slave_start(i32 %64, %struct.TYPE_9__* %65, %struct.TYPE_10__* %66)
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %87, %55
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* @portMAX_DELAY, align 4
  %86 = call i32 @xQueueSend(i32 %78, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %68

90:                                               ; preds = %68
  %91 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %92 = sdiv i32 50, %91
  %93 = call i32 @vTaskDelay(i32 %92)
  %94 = call i32 @unity_send_signal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %146, %90
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %149

101:                                              ; preds = %95
  %102 = load i32, i32* @MASTER_TAG, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @ESP_LOGI(i32 %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = call i32 @vTaskDelay(i32 20)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32* %111, i32** %12, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @get_trans_len(i64 %114, i32* %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* @FULL_DUPLEX, align 4
  %119 = call i32 @spitest_master_print_data(i32* %117, i32 %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @portMAX_DELAY, align 4
  %125 = call i32* @xRingbufferReceive(i32 %123, i64* %14, i32 %124)
  store i32* %125, i32** %15, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @spitest_slave_print_data(i32* %126, i32 1)
  store i32 0, i32* %16, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @HALF_DUPLEX_MISO, align 8
  %132 = icmp ne i64 %130, %131
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32*, i32** %12, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @spitest_check_data(i32 %134, i32* %135, i32* %136, i32 0, i32 1, i32 %137)
  %139 = call i32 @TEST_ESP_OK(i32 %138)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** %15, align 8
  %145 = call i32 @vRingbufferReturnItem(i32 %143, i32* %144)
  br label %146

146:                                              ; preds = %101
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %95

149:                                              ; preds = %95
  %150 = load i32, i32* @TEST_SLAVE_HOST, align 4
  %151 = call i64 @spi_slave_free(i32 %150)
  %152 = load i64, i64* @ESP_OK, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @TEST_ASSERT(i32 %154)
  br label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %34

159:                                              ; preds = %54, %42
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

declare dso_local i32 @spitest_init_transactions(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @timing_slave_start(i32, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @xQueueSend(i32, i32*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @unity_send_signal(i8*) #1

declare dso_local i32 @get_trans_len(i64, i32*) #1

declare dso_local i32 @spitest_master_print_data(i32*, i32) #1

declare dso_local i32* @xRingbufferReceive(i32, i64*, i32) #1

declare dso_local i32 @spitest_slave_print_data(i32*, i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @spitest_check_data(i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @vRingbufferReturnItem(i32, i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i64 @spi_slave_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
