; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/common/extr_protocomm.c_protocomm_add_endpoint_internal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/common/extr_protocomm.c_protocomm_add_endpoint_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i8*, i32*, i8*)*, i32 }
%struct.TYPE_8__ = type { i8*, i32, i8*, i32* }

@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Endpoint with this name already exists\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Error adding endpoint\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error allocating endpoint resource\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i32*, i8*, i32)* @protocomm_add_endpoint_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @protocomm_add_endpoint_internal(%struct.TYPE_7__* %0, i8* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16, %5
  %23 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %23, i64* %6, align 8
  br label %83

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call %struct.TYPE_8__* @search_endpoint(%struct.TYPE_7__* %25, i8* %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %12, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @ESP_LOGE(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @ESP_FAIL, align 8
  store i64 %33, i64* %6, align 8
  br label %83

34:                                               ; preds = %24
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64 (i8*, i32*, i8*)*, i64 (i8*, i32*, i8*)** %36, align 8
  %38 = icmp ne i64 (i8*, i32*, i8*)* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64 (i8*, i32*, i8*)*, i64 (i8*, i32*, i8*)** %41, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 %42(i8* %43, i32* %44, i8* %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @ESP_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i32, i32* @TAG, align 4
  %52 = call i32 @ESP_LOGE(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i64, i64* %13, align 8
  store i64 %53, i64* %6, align 8
  br label %83

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %34
  %56 = call i64 @calloc(i32 1, i32 32)
  %57 = inttoptr i64 %56 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %12, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @TAG, align 4
  %62 = call i32 @ESP_LOGE(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %63, i64* %6, align 8
  br label %83

64:                                               ; preds = %55
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i32* %68, i32** %70, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %80 = load i32, i32* @next, align 4
  %81 = call i32 @SLIST_INSERT_HEAD(i32* %78, %struct.TYPE_8__* %79, i32 %80)
  %82 = load i64, i64* @ESP_OK, align 8
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %64, %60, %50, %30, %22
  %84 = load i64, i64* %6, align 8
  ret i64 %84
}

declare dso_local %struct.TYPE_8__* @search_endpoint(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
