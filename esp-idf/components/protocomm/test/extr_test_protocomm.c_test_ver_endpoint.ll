; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_ver_endpoint.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_ver_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@test_pc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"test-ver\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"test-ver handler failed\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@TEST_VER_STR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"incorrect response data from test-ver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @test_ver_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_ver_endpoint(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 0, i64* %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32, i32* @test_pc, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @protocomm_req_handle(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10, i32* null, i32 0, i32** %5, i64* %4)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @ESP_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @TAG, align 4
  %17 = call i32 @ESP_LOGE(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* @ESP_FAIL, align 8
  store i64 %18, i64* %2, align 8
  br label %40

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @TEST_VER_STR, align 4
  %22 = call i64 @strlen(i32 %21)
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @TEST_VER_STR, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @memcmp(i32 %25, i32* %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24, %19
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @ESP_LOGE(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @free(i32* %33)
  %35 = load i64, i64* @ESP_FAIL, align 8
  store i64 %35, i64* %2, align 8
  br label %40

36:                                               ; preds = %24
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @free(i32* %37)
  %39 = load i64, i64* @ESP_OK, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %36, %30, %15
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i64 @protocomm_req_handle(i32, i8*, i32, i32*, i32, i32**, i64*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @memcmp(i32, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
