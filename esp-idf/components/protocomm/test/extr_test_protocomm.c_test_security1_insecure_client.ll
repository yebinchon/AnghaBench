; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security1_insecure_client.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security1_insecure_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Starting Security 1 insecure client test\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test pop\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Error allocating session\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Error starting test\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Error testing security endpoint\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Error testing request endpoint\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Protocomm test successful\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @test_security1_insecure_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_security1_insecure_client() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = load i32, i32* @TAG, align 4
  %6 = call i32 @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = call %struct.TYPE_8__* @calloc(i32 1, i32 16)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %19, i64* %1, align 8
  br label %67

20:                                               ; preds = %0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 5, i32* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %26, align 8
  %27 = call i64 @start_test_service(i32 1, %struct.TYPE_9__* %3)
  %28 = load i64, i64* @ESP_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @ESP_LOGE(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = call i32 @free(%struct.TYPE_8__* %33)
  %35 = load i64, i64* @ESP_FAIL, align 8
  store i64 %35, i64* %1, align 8
  br label %67

36:                                               ; preds = %20
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = call i64 @test_sec_endpoint(%struct.TYPE_8__* %37)
  %39 = load i64, i64* @ESP_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @TAG, align 4
  %43 = call i32 @ESP_LOGE(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %44 = call i32 (...) @stop_test_service()
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = call i32 @free(%struct.TYPE_8__* %45)
  %47 = load i64, i64* @ESP_FAIL, align 8
  store i64 %47, i64* %1, align 8
  br label %67

48:                                               ; preds = %36
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = call i64 @test_req_endpoint(%struct.TYPE_8__* %49)
  %51 = load i64, i64* @ESP_OK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* @TAG, align 4
  %55 = call i32 @ESP_LOGE(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 (...) @stop_test_service()
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = call i32 @free(%struct.TYPE_8__* %57)
  %59 = load i64, i64* @ESP_FAIL, align 8
  store i64 %59, i64* %1, align 8
  br label %67

60:                                               ; preds = %48
  %61 = call i32 (...) @stop_test_service()
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = call i32 @free(%struct.TYPE_8__* %62)
  %64 = load i32, i32* @TAG, align 4
  %65 = call i32 @ESP_LOGI(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i64, i64* @ESP_OK, align 8
  store i64 %66, i64* %1, align 8
  br label %67

67:                                               ; preds = %60, %53, %41, %30, %16
  %68 = load i64, i64* %1, align 8
  ret i64 %68
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @start_test_service(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @test_sec_endpoint(%struct.TYPE_8__*) #1

declare dso_local i32 @stop_test_service(...) #1

declare dso_local i64 @test_req_endpoint(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
