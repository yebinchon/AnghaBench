; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_protocomm.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_protocomm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Starting Protocomm test\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Error starting test\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Error testing version endpoint\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error creating new session\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error testing security endpoint\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Error testing request endpoint\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Protocomm test successful\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @test_protocomm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_protocomm(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %4 = load i32, i32* @TAG, align 4
  %5 = call i32 @ESP_LOGI(i32 %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @start_test_service(i32 %8, i32 %11)
  %13 = load i64, i64* @ESP_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @TAG, align 4
  %17 = call i32 @ESP_LOGE(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* @ESP_FAIL, align 8
  store i64 %18, i64* %2, align 8
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = call i64 @test_ver_endpoint(%struct.TYPE_8__* %20)
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 @ESP_LOGE(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 (...) @stop_test_service()
  %28 = load i64, i64* @ESP_FAIL, align 8
  store i64 %28, i64* %2, align 8
  br label %70

29:                                               ; preds = %19
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = call i64 @test_new_session(%struct.TYPE_8__* %30)
  %32 = load i64, i64* @ESP_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @TAG, align 4
  %36 = call i32 @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 (...) @stop_test_service()
  %38 = load i64, i64* @ESP_FAIL, align 8
  store i64 %38, i64* %2, align 8
  br label %70

39:                                               ; preds = %29
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = call i64 @test_sec_endpoint(%struct.TYPE_8__* %40)
  %42 = load i64, i64* @ESP_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @TAG, align 4
  %46 = call i32 @ESP_LOGE(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = call i32 @test_delete_session(%struct.TYPE_8__* %47)
  %49 = call i32 (...) @stop_test_service()
  %50 = load i64, i64* @ESP_FAIL, align 8
  store i64 %50, i64* %2, align 8
  br label %70

51:                                               ; preds = %39
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = call i64 @test_req_endpoint(%struct.TYPE_8__* %52)
  %54 = load i64, i64* @ESP_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @TAG, align 4
  %58 = call i32 @ESP_LOGE(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = call i32 @test_delete_session(%struct.TYPE_8__* %59)
  %61 = call i32 (...) @stop_test_service()
  %62 = load i64, i64* @ESP_FAIL, align 8
  store i64 %62, i64* %2, align 8
  br label %70

63:                                               ; preds = %51
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = call i32 @test_delete_session(%struct.TYPE_8__* %64)
  %66 = call i32 (...) @stop_test_service()
  %67 = load i32, i32* @TAG, align 4
  %68 = call i32 @ESP_LOGI(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i64, i64* @ESP_OK, align 8
  store i64 %69, i64* %2, align 8
  br label %70

70:                                               ; preds = %63, %56, %44, %34, %24, %15
  %71 = load i64, i64* %2, align 8
  ret i64 %71
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i64 @start_test_service(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @test_ver_endpoint(%struct.TYPE_8__*) #1

declare dso_local i32 @stop_test_service(...) #1

declare dso_local i64 @test_new_session(%struct.TYPE_8__*) #1

declare dso_local i64 @test_sec_endpoint(%struct.TYPE_8__*) #1

declare dso_local i32 @test_delete_session(%struct.TYPE_8__*) #1

declare dso_local i64 @test_req_endpoint(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
