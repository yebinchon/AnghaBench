; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_start_test_service.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_start_test_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_pc = common dso_local global i32* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to create new protocomm instance\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"test-sec\00", align 1
@protocomm_security0 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to set Security0\00", align 1
@test_sec = common dso_local global i32* null, align 8
@protocomm_security1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to set Security1\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"test-ver\00", align 1
@TEST_VER_STR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Failed to set version\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"test-ep\00", align 1
@test_req_handler = common dso_local global i32 0, align 4
@test_priv_data = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to set test-ep endpoint handler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*)* @start_test_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @start_test_service(i32 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = call i32* (...) @protocomm_new()
  store i32* %6, i32** @test_pc, align 8
  %7 = load i32*, i32** @test_pc, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGE(i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @ESP_FAIL, align 8
  store i64 %12, i64* %3, align 8
  br label %63

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32*, i32** @test_pc, align 8
  %18 = call i64 @protocomm_set_security(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* @protocomm_security0, i32* null)
  %19 = load i64, i64* @ESP_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i64, i64* @ESP_FAIL, align 8
  store i64 %24, i64* %3, align 8
  br label %63

25:                                               ; preds = %16
  store i32* @protocomm_security0, i32** @test_sec, align 8
  br label %41

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32*, i32** @test_pc, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @protocomm_set_security(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* @protocomm_security1, i32* %31)
  %33 = load i64, i64* @ESP_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @TAG, align 4
  %37 = call i32 @ESP_LOGE(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i64, i64* @ESP_FAIL, align 8
  store i64 %38, i64* %3, align 8
  br label %63

39:                                               ; preds = %29
  store i32* @protocomm_security1, i32** @test_sec, align 8
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32*, i32** @test_pc, align 8
  %43 = load i32, i32* @TEST_VER_STR, align 4
  %44 = call i64 @protocomm_set_version(i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* @ESP_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @TAG, align 4
  %49 = call i32 @ESP_LOGE(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i64, i64* @ESP_FAIL, align 8
  store i64 %50, i64* %3, align 8
  br label %63

51:                                               ; preds = %41
  %52 = load i32*, i32** @test_pc, align 8
  %53 = load i32, i32* @test_req_handler, align 4
  %54 = call i64 @protocomm_add_endpoint(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %53, i8* bitcast (i32* @test_priv_data to i8*))
  %55 = load i64, i64* @ESP_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @TAG, align 4
  %59 = call i32 @ESP_LOGE(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %60 = load i64, i64* @ESP_FAIL, align 8
  store i64 %60, i64* %3, align 8
  br label %63

61:                                               ; preds = %51
  %62 = load i64, i64* @ESP_OK, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %57, %47, %35, %21, %9
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i32* @protocomm_new(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @protocomm_set_security(i32*, i8*, i32*, i32*) #1

declare dso_local i64 @protocomm_set_version(i32*, i8*, i32) #1

declare dso_local i64 @protocomm_add_endpoint(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
