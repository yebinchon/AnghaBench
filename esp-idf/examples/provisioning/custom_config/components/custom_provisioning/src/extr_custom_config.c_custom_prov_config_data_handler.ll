; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/custom_config/components/custom_provisioning/src/extr_custom_config.c_custom_prov_config_data_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/custom_config/components/custom_provisioning/src/extr_custom_config.c_custom_prov_config_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to unpack config data\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@CUSTOM_CONFIG_STATUS__ConfigFail = common dso_local global i8* null, align 8
@ESP_OK = common dso_local global i64 0, align 8
@CUSTOM_CONFIG_STATUS__ConfigSuccess = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid encoding for response\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"System out of memory\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @custom_prov_config_data_handler(i32 %0, i32* %1, i32 %2, i32** %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca i64 (%struct.TYPE_10__*)*, align 8
  %17 = alloca %struct.TYPE_10__, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = bitcast i8* %19 to i64 (%struct.TYPE_10__*)*
  store i64 (%struct.TYPE_10__*)* %20, i64 (%struct.TYPE_10__*)** %16, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call %struct.TYPE_12__* @custom_config_request__unpack(i32* null, i32 %21, i32* %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %14, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %29, i32* %7, align 4
  br label %91

30:                                               ; preds = %6
  %31 = call i32 @custom_config_response__init(%struct.TYPE_11__* %15)
  %32 = load i8*, i8** @CUSTOM_CONFIG_STATUS__ConfigFail, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %16, align 8
  %35 = icmp ne i64 (%struct.TYPE_10__*)* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strlcpy(i32 %38, i32 %41, i32 4)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %16, align 8
  %48 = call i64 %47(%struct.TYPE_10__* %17)
  store i64 %48, i64* %18, align 8
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* @ESP_OK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i8*, i8** @CUSTOM_CONFIG_STATUS__ConfigSuccess, align 8
  br label %56

54:                                               ; preds = %36
  %55 = load i8*, i8** @CUSTOM_CONFIG_STATUS__ConfigFail, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i8* [ %53, %52 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %56, %30
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %61 = call i32 @custom_config_request__free_unpacked(%struct.TYPE_12__* %60, i32* null)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 47, i32* %62, align 8
  %63 = call i32 @custom_config_response__get_packed_size(%struct.TYPE_11__* %15)
  %64 = load i32*, i32** %12, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @TAG, align 4
  %70 = call i32 @ESP_LOGE(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ESP_FAIL, align 4
  store i32 %71, i32* %7, align 4
  br label %91

72:                                               ; preds = %59
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @malloc(i32 %74)
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32**, i32*** %11, align 8
  store i32* %76, i32** %77, align 8
  %78 = load i32**, i32*** %11, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load i32, i32* @TAG, align 4
  %83 = call i32 @ESP_LOGE(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %84, i32* %7, align 4
  br label %91

85:                                               ; preds = %72
  %86 = load i32**, i32*** %11, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @custom_config_response__pack(%struct.TYPE_11__* %15, i32* %87)
  %89 = load i64, i64* @ESP_OK, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %85, %81, %68, %26
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_12__* @custom_config_request__unpack(i32*, i32, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @custom_config_response__init(%struct.TYPE_11__*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @custom_config_request__free_unpacked(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @custom_config_response__get_packed_size(%struct.TYPE_11__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @custom_config_response__pack(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
