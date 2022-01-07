; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/test/extr_test_spiffs.c_test_spiffs_concurrent.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/test/extr_test_spiffs.c_test_spiffs_concurrent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"writing f1 and f2\0A\00", align 1
@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@read_write_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"rw1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rw2\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"f1 done\0A\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"f2 done\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"reading f1 and f2, writing f3 and f4\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rw3\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"rw4\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"f3 done\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"f4 done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_spiffs_concurrent(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4 x [64 x i8]], align 16
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca %struct.TYPE_4__, align 4
  %14 = alloca { i64, i32 }, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 %19
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  %25 = call i32 @snprintf(i8* %21, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %22, i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 %26
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  %29 = call i32 @unlink(i8* %28)
  br label %30

30:                                               ; preds = %18
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %15

33:                                               ; preds = %15
  %34 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 0
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %34, i64 0, i64 0
  %36 = call { i64, i32 } @READ_WRITE_TEST_ARG_INIT(i8* %35, i32 1)
  store { i64, i32 } %36, { i64, i32 }* %6, align 8
  %37 = bitcast { i64, i32 }* %6 to i8*
  %38 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 8 %37, i64 12, i1 false)
  %39 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 1
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %39, i64 0, i64 0
  %41 = call { i64, i32 } @READ_WRITE_TEST_ARG_INIT(i8* %40, i32 2)
  store { i64, i32 } %41, { i64, i32 }* %8, align 8
  %42 = bitcast { i64, i32 }* %8 to i8*
  %43 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 8 %42, i64 12, i1 false)
  %44 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %45 = load i32, i32* @portNUM_PROCESSORS, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 2048, %struct.TYPE_4__* %5, i32 3, i32* null, i32 0)
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 2048, %struct.TYPE_4__* %7, i32 3, i32* null, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @portMAX_DELAY, align 4
  %53 = call i32 @xSemaphoreTake(i32 %51, i32 %52)
  %54 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* @ESP_OK, align 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TEST_ASSERT_EQUAL(i32 %55, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @portMAX_DELAY, align 4
  %62 = call i32 @xSemaphoreTake(i32 %60, i32 %61)
  %63 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32, i32* @ESP_OK, align 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @TEST_ASSERT_EQUAL(i32 %64, i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 2
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %70, i64 0, i64 0
  %72 = call { i64, i32 } @READ_WRITE_TEST_ARG_INIT(i8* %71, i32 3)
  store { i64, i32 } %72, { i64, i32 }* %12, align 8
  %73 = bitcast { i64, i32 }* %12 to i8*
  %74 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 8 %73, i64 12, i1 false)
  %75 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 3
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %75, i64 0, i64 0
  %77 = call { i64, i32 } @READ_WRITE_TEST_ARG_INIT(i8* %76, i32 4)
  store { i64, i32 } %77, { i64, i32 }* %14, align 8
  %78 = bitcast { i64, i32 }* %14 to i8*
  %79 = bitcast %struct.TYPE_4__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 8 %78, i64 12, i1 false)
  %80 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 2048, %struct.TYPE_4__* %11, i32 3, i32* null, i32 %81)
  %83 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 2048, %struct.TYPE_4__* %13, i32 3, i32* null, i32 0)
  %84 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 2048, %struct.TYPE_4__* %5, i32 3, i32* null, i32 0)
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 2048, %struct.TYPE_4__* %7, i32 3, i32* null, i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @portMAX_DELAY, align 4
  %90 = call i32 @xSemaphoreTake(i32 %88, i32 %89)
  %91 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* @ESP_OK, align 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @TEST_ASSERT_EQUAL(i32 %92, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @portMAX_DELAY, align 4
  %99 = call i32 @xSemaphoreTake(i32 %97, i32 %98)
  %100 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32, i32* @ESP_OK, align 4
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @TEST_ASSERT_EQUAL(i32 %101, i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @portMAX_DELAY, align 4
  %108 = call i32 @xSemaphoreTake(i32 %106, i32 %107)
  %109 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %110 = load i32, i32* @ESP_OK, align 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @TEST_ASSERT_EQUAL(i32 %110, i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @portMAX_DELAY, align 4
  %117 = call i32 @xSemaphoreTake(i32 %115, i32 %116)
  %118 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %119 = load i32, i32* @ESP_OK, align 4
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @TEST_ASSERT_EQUAL(i32 %119, i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @vSemaphoreDelete(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @vSemaphoreDelete(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @vSemaphoreDelete(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @vSemaphoreDelete(i32 %133)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local { i64, i32 } @READ_WRITE_TEST_ARG_INIT(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @xTaskCreatePinnedToCore(i32*, i8*, i32, %struct.TYPE_4__*, i32, i32*, i32) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @vSemaphoreDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
