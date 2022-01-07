; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security1_wrong_pop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security1_wrong_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Starting Security 1 wrong auth test\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test pop\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Error allocating session\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Error starting test\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Error creating new session\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"wrong pop\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Error testing security endpoint\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Protocomm test successful\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @test_security1_wrong_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_security1_wrong_pop() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %9, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %12, align 8
  %15 = call %struct.TYPE_9__* @calloc(i32 1, i32 16)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 @ESP_LOGE(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %21, i64* %1, align 8
  br label %81

22:                                               ; preds = %0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %28, align 8
  %29 = call i64 @start_test_service(i32 1, %struct.TYPE_10__* %3)
  %30 = load i64, i64* @ESP_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i32, i32* @TAG, align 4
  %34 = call i32 @ESP_LOGE(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = call i32 @free(%struct.TYPE_9__* %35)
  %37 = load i64, i64* @ESP_FAIL, align 8
  store i64 %37, i64* %1, align 8
  br label %81

38:                                               ; preds = %22
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call i64 @test_new_session(%struct.TYPE_9__* %39)
  %41 = load i64, i64* @ESP_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* @TAG, align 4
  %45 = call i32 @ESP_LOGE(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32 (...) @stop_test_service()
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = call i32 @free(%struct.TYPE_9__* %47)
  %49 = load i64, i64* @ESP_FAIL, align 8
  store i64 %49, i64* %1, align 8
  br label %81

50:                                               ; preds = %38
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strlen(i8* %52)
  store i32 %53, i32* %51, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %55 = load i8*, i8** %5, align 8
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %54, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = call i64 @test_sec_endpoint(%struct.TYPE_9__* %59)
  %61 = load i64, i64* @ESP_OK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %50
  %64 = load i32, i32* @TAG, align 4
  %65 = call i32 @ESP_LOGE(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = call i32 @test_delete_session(%struct.TYPE_9__* %66)
  %68 = call i32 (...) @stop_test_service()
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = call i32 @free(%struct.TYPE_9__* %69)
  %71 = load i64, i64* @ESP_FAIL, align 8
  store i64 %71, i64* %1, align 8
  br label %81

72:                                               ; preds = %50
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = call i32 @test_delete_session(%struct.TYPE_9__* %73)
  %75 = call i32 (...) @stop_test_service()
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = call i32 @free(%struct.TYPE_9__* %76)
  %78 = load i32, i32* @TAG, align 4
  %79 = call i32 @ESP_LOGI(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %80 = load i64, i64* @ESP_OK, align 8
  store i64 %80, i64* %1, align 8
  br label %81

81:                                               ; preds = %72, %63, %43, %32, %18
  %82 = load i64, i64* %1, align 8
  ret i64 %82
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @start_test_service(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

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
