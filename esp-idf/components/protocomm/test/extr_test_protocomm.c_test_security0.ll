; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security0.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Starting Sec0 test\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Error allocating session\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Sec0 test failed\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Sec0 test successful\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @test_security0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_security0() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load i32, i32* @TAG, align 4
  %4 = call i32 @ESP_LOGI(i32 %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = call %struct.TYPE_5__* @calloc(i32 1, i32 24)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGE(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %11, i64* %1, align 8
  br label %35

12:                                               ; preds = %0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 8, i32* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = call i64 @test_protocomm(%struct.TYPE_5__* %19)
  %21 = load i64, i64* @ESP_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load i32, i32* @TAG, align 4
  %25 = call i32 @ESP_LOGE(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = call i32 @free(%struct.TYPE_5__* %26)
  %28 = load i64, i64* @ESP_FAIL, align 8
  store i64 %28, i64* %1, align 8
  br label %35

29:                                               ; preds = %12
  %30 = load i32, i32* @TAG, align 4
  %31 = call i32 @ESP_LOGI(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = call i32 @free(%struct.TYPE_5__* %32)
  %34 = load i64, i64* @ESP_OK, align 8
  store i64 %34, i64* %1, align 8
  br label %35

35:                                               ; preds = %29, %23, %8
  %36 = load i64, i64* %1, align 8
  ret i64 %36
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @test_protocomm(%struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
