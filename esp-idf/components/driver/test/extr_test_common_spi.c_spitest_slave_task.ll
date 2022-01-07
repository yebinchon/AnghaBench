; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_common_spi.c_spitest_slave_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_common_spi.c_spitest_slave_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32*, i64, i32 }

@SLAVE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"slave up\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"received: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spitest_slave_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [328 x i32], align 16
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @SLAVE_TAG, align 4
  %19 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %1, %47
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @portMAX_DELAY, align 4
  %23 = call i32 @xQueueReceive(i32 %21, %struct.TYPE_8__* %7, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @assert(i32 %24)
  %26 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 32, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds [328 x i32], [328 x i32]* %6, i64 0, i64 0
  %34 = getelementptr inbounds i32, i32* %33, i64 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %43, %20
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @portMAX_DELAY, align 4
  %41 = call i32 @spi_slave_transmit(i32 %39, %struct.TYPE_6__* %9, i32 %40)
  %42 = call i32 @TEST_ESP_OK(i32 %41)
  br label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sle i32 %45, 2
  br i1 %46, label %36, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds [328 x i32], [328 x i32]* %6, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %50 = call i32 @memcpy(i32* %48, i32* %49, i32 4)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = getelementptr inbounds [328 x i32], [328 x i32]* %6, i64 0, i64 0
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = bitcast i32* %55 to i32**
  store i32* %53, i32** %56, align 8
  %57 = load i32, i32* @SLAVE_TAG, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = getelementptr inbounds [328 x i32], [328 x i32]* %6, i64 0, i64 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 7
  %66 = sdiv i32 %65, 8
  %67 = add nsw i32 8, %66
  %68 = load i32, i32* @portMAX_DELAY, align 4
  %69 = call i32 @xRingbufferSend(i32 %61, i32* %62, i32 %67, i32 %68)
  br label %20
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @xQueueReceive(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @spi_slave_transmit(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @xRingbufferSend(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
