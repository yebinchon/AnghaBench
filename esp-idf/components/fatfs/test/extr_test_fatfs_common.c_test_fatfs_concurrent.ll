; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_concurrent.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_concurrent.c"
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
define dso_local void @test_fatfs_concurrent(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4 x [64 x i8]], align 16
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__, align 4
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca { i64, i32 }, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %31, %1
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 %20
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %23 = load i8*, i8** %2, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  %26 = call i32 @snprintf(i8* %22, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %23, i64 %25)
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 %27
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 0
  %30 = call i32 @unlink(i8* %29)
  br label %31

31:                                               ; preds = %19
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %16

34:                                               ; preds = %16
  %35 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 0
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %35, i64 0, i64 0
  %37 = call { i64, i32 } @READ_WRITE_TEST_ARG_INIT(i8* %36, i32 1)
  store { i64, i32 } %37, { i64, i32 }* %6, align 8
  %38 = bitcast { i64, i32 }* %6 to i8*
  %39 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 8 %38, i64 12, i1 false)
  %40 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 1
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %40, i64 0, i64 0
  %42 = call { i64, i32 } @READ_WRITE_TEST_ARG_INIT(i8* %41, i32 2)
  store { i64, i32 } %42, { i64, i32 }* %8, align 8
  %43 = bitcast { i64, i32 }* %8 to i8*
  %44 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 8 %43, i64 12, i1 false)
  %45 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %46 = load i32, i32* @portNUM_PROCESSORS, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  store i32 4096, i32* %11, align 4
  %48 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4096, %struct.TYPE_4__* %5, i32 3, i32* null, i32 0)
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 4096, %struct.TYPE_4__* %7, i32 3, i32* null, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @portMAX_DELAY, align 4
  %54 = call i32 @xSemaphoreTake(i32 %52, i32 %53)
  %55 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* @ESP_OK, align 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @TEST_ASSERT_EQUAL(i32 %56, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @portMAX_DELAY, align 4
  %63 = call i32 @xSemaphoreTake(i32 %61, i32 %62)
  %64 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32, i32* @ESP_OK, align 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @TEST_ASSERT_EQUAL(i32 %65, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 2
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %71, i64 0, i64 0
  %73 = call { i64, i32 } @READ_WRITE_TEST_ARG_INIT(i8* %72, i32 3)
  store { i64, i32 } %73, { i64, i32 }* %13, align 8
  %74 = bitcast { i64, i32 }* %13 to i8*
  %75 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 8 %74, i64 12, i1 false)
  %76 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %3, i64 0, i64 3
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %76, i64 0, i64 0
  %78 = call { i64, i32 } @READ_WRITE_TEST_ARG_INIT(i8* %77, i32 4)
  store { i64, i32 } %78, { i64, i32 }* %15, align 8
  %79 = bitcast { i64, i32 }* %15 to i8*
  %80 = bitcast %struct.TYPE_4__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 8 %79, i64 12, i1 false)
  %81 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 4096, %struct.TYPE_4__* %12, i32 3, i32* null, i32 %82)
  %84 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 4096, %struct.TYPE_4__* %14, i32 3, i32* null, i32 0)
  %85 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4096, %struct.TYPE_4__* %5, i32 3, i32* null, i32 0)
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @xTaskCreatePinnedToCore(i32* @read_write_task, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 4096, %struct.TYPE_4__* %7, i32 3, i32* null, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @portMAX_DELAY, align 4
  %91 = call i32 @xSemaphoreTake(i32 %89, i32 %90)
  %92 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @ESP_OK, align 4
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @TEST_ASSERT_EQUAL(i32 %93, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @portMAX_DELAY, align 4
  %100 = call i32 @xSemaphoreTake(i32 %98, i32 %99)
  %101 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* @ESP_OK, align 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @TEST_ASSERT_EQUAL(i32 %102, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @portMAX_DELAY, align 4
  %109 = call i32 @xSemaphoreTake(i32 %107, i32 %108)
  %110 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %111 = load i32, i32* @ESP_OK, align 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @TEST_ASSERT_EQUAL(i32 %111, i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @portMAX_DELAY, align 4
  %118 = call i32 @xSemaphoreTake(i32 %116, i32 %117)
  %119 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %120 = load i32, i32* @ESP_OK, align 4
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @TEST_ASSERT_EQUAL(i32 %120, i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @vSemaphoreDelete(i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @vSemaphoreDelete(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @vSemaphoreDelete(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @vSemaphoreDelete(i32 %134)
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
