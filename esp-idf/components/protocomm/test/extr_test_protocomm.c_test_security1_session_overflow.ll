; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security1_session_overflow.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security1_session_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Starting Security 1 session overflow test\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test pop\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Error allocating session\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Error starting test\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Error creating new session\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Error testing security endpoint\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Protocomm test successful\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @test_security1_session_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_security1_session_overflow() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = load i32, i32* @TAG, align 4
  %7 = call i32 @ESP_LOGI(i32 %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %8, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %11, align 8
  %14 = call %struct.TYPE_9__* @calloc(i32 1, i32 16)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = icmp eq %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %20, i64* %1, align 8
  br label %112

21:                                               ; preds = %0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 2, i32* %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %27, align 8
  %28 = call %struct.TYPE_9__* @calloc(i32 1, i32 16)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %5, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = icmp eq %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load i32, i32* @TAG, align 4
  %33 = call i32 @ESP_LOGE(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = call i32 @free(%struct.TYPE_9__* %34)
  %36 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %36, i64* %1, align 8
  br label %112

37:                                               ; preds = %21
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 3, i32* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %43, align 8
  %44 = call i64 @start_test_service(i32 1, %struct.TYPE_10__* %3)
  %45 = load i64, i64* @ESP_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load i32, i32* @TAG, align 4
  %49 = call i32 @ESP_LOGE(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = call i32 @free(%struct.TYPE_9__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = call i32 @free(%struct.TYPE_9__* %52)
  %54 = load i64, i64* @ESP_FAIL, align 8
  store i64 %54, i64* %1, align 8
  br label %112

55:                                               ; preds = %37
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = call i64 @test_new_session(%struct.TYPE_9__* %56)
  %58 = load i64, i64* @ESP_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32, i32* @TAG, align 4
  %62 = call i32 @ESP_LOGE(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 (...) @stop_test_service()
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = call i32 @free(%struct.TYPE_9__* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = call i32 @free(%struct.TYPE_9__* %66)
  %68 = load i64, i64* @ESP_FAIL, align 8
  store i64 %68, i64* %1, align 8
  br label %112

69:                                               ; preds = %55
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = call i64 @test_sec_endpoint(%struct.TYPE_9__* %70)
  %72 = load i64, i64* @ESP_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load i32, i32* @TAG, align 4
  %76 = call i32 @ESP_LOGE(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = call i32 @test_delete_session(%struct.TYPE_9__* %77)
  %79 = call i32 (...) @stop_test_service()
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = call i32 @free(%struct.TYPE_9__* %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = call i32 @free(%struct.TYPE_9__* %82)
  %84 = load i64, i64* @ESP_FAIL, align 8
  store i64 %84, i64* %1, align 8
  br label %112

85:                                               ; preds = %69
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = call i64 @test_sec_endpoint(%struct.TYPE_9__* %86)
  %88 = load i64, i64* @ESP_OK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load i32, i32* @TAG, align 4
  %92 = call i32 @ESP_LOGE(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = call i32 @test_delete_session(%struct.TYPE_9__* %93)
  %95 = call i32 (...) @stop_test_service()
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = call i32 @free(%struct.TYPE_9__* %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = call i32 @free(%struct.TYPE_9__* %98)
  %100 = load i64, i64* @ESP_FAIL, align 8
  store i64 %100, i64* %1, align 8
  br label %112

101:                                              ; preds = %85
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = call i32 @test_delete_session(%struct.TYPE_9__* %102)
  %104 = call i32 (...) @stop_test_service()
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = call i32 @free(%struct.TYPE_9__* %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = call i32 @free(%struct.TYPE_9__* %107)
  %109 = load i32, i32* @TAG, align 4
  %110 = call i32 @ESP_LOGI(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i64, i64* @ESP_OK, align 8
  store i64 %111, i64* %1, align 8
  br label %112

112:                                              ; preds = %101, %90, %74, %60, %47, %31, %17
  %113 = load i64, i64* %1, align 8
  ret i64 %113
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i64 @start_test_service(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @test_new_session(%struct.TYPE_9__*) #1

declare dso_local i32 @stop_test_service(...) #1

declare dso_local i64 @test_sec_endpoint(%struct.TYPE_9__*) #1

declare dso_local i32 @test_delete_session(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
