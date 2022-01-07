; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_set_app_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_set_app_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@prov_ctx_lock = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Provisioning manager not initialized\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@prov_ctx = common dso_local global %struct.TYPE_2__* null, align 8
@WIFI_PROV_STATE_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"ver\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cap\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wifi_prov_mgr_set_app_info(i8* %0, i8* %1, i8** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8**, i8*** %8, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %16, %4
  %23 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %23, i32* %5, align 4
  br label %102

24:                                               ; preds = %19
  %25 = load i32, i32* @prov_ctx_lock, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 @ESP_LOGE(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %30, i32* %5, align 4
  br label %102

31:                                               ; preds = %24
  %32 = load i32, i32* @ESP_FAIL, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @prov_ctx_lock, align 4
  %34 = call i32 @ACQUIRE_LOCK(i32 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prov_ctx, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %96

37:                                               ; preds = %31
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prov_ctx, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WIFI_PROV_STATE_IDLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %96

43:                                               ; preds = %37
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prov_ctx, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = call i8* (...) @cJSON_CreateObject()
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prov_ctx, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = call i8* (...) @cJSON_CreateObject()
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %11, align 8
  %56 = call i32* (...) @cJSON_CreateArray()
  store i32* %56, i32** %12, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prov_ctx, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @cJSON_AddItemToObject(i32* %59, i8* %60, i32* %61)
  %63 = load i32*, i32** %11, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @cJSON_AddStringToObject(i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @cJSON_AddItemToObject(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %67)
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %91, %53
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* %9, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load i8**, i8*** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32*, i32** %12, align 8
  %83 = load i8**, i8*** %8, align 8
  %84 = load i32, i32* %13, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @cJSON_CreateString(i8* %87)
  %89 = call i32 @cJSON_AddItemToArray(i32* %82, i32 %88)
  br label %90

90:                                               ; preds = %81, %74
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %69

94:                                               ; preds = %69
  %95 = load i32, i32* @ESP_OK, align 4
  store i32 %95, i32* %10, align 4
  br label %98

96:                                               ; preds = %37, %31
  %97 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = load i32, i32* @prov_ctx_lock, align 4
  %100 = call i32 @RELEASE_LOCK(i32 %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %27, %22
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ACQUIRE_LOCK(i32) #1

declare dso_local i8* @cJSON_CreateObject(...) #1

declare dso_local i32* @cJSON_CreateArray(...) #1

declare dso_local i32 @cJSON_AddItemToObject(i32*, i8*, i32*) #1

declare dso_local i32 @cJSON_AddStringToObject(i32*, i8*, i8*) #1

declare dso_local i32 @cJSON_AddItemToArray(i32*, i32) #1

declare dso_local i32 @cJSON_CreateString(i8*) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
